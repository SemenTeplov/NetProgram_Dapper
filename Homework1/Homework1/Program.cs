using Dapper;
using Newtonsoft.Json;
using System;
using System.Data.SqlClient;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Text.Json;

public class Person
{
    [JsonProperty("id")]
    public int id { get; set; }
    [JsonProperty("firstName")]
    public string firstName { get; set; }
    [JsonProperty("lastName")]
    public string lastName { get; set; }
    [JsonProperty("gender")]
    public int gender { get; set; }
    [JsonProperty("age")]
    public int age { get; set; }
}

class Repository
{
    readonly string connectionString = 
        @"Data Source=DESKTOP-VKP7RF3\SQLEXPRESS01;Initial Catalog=HomeworkNET;Integrated Security=True";

public List<Person> GetUser()
    {
        using var db = new SqlConnection(connectionString);
        db.Open();

        var query = "SELECT * FROM Persons";
        var people = db.Query<Person>(query);

        return people.ToList();
    }
    public List<Person> GetUserByName(string name)
    {
        using var db = new SqlConnection(connectionString);
        db.Open();

        var query = "SELECT * FROM Persons WHERE firstName LIKE @name + '%'";
        var people = db.Query<Person>(query, new{name});

        return people.ToList();
    }
}

public class Programm
{
    private static Repository repository;

    static StringBuilder FormatData(List<Person>? persons)
    {
        StringBuilder sb = new StringBuilder(1000);

        sb.Append("<h1>List of users: </h1>");
        sb.Append("<ul>");
        foreach (var item in persons)
        {
            sb.Append($"<li>{item.id}) " +
                $"{item.firstName} " +
                $"{item.lastName}, " +
                $"Gender: {item.gender}, " +
                $"Age: {item.age}</li>");
        }
        sb.Append("</ul>");

        return sb;
    }
    public static void Main()
    {
        repository = new Repository();
        StartServer();
        Console.Read();
    }

    static async Task StartServer()
    {
        HttpListener server = new HttpListener();
        server.Prefixes.Add("http://127.0.0.1:8080/");
        server.Start();

        Console.WriteLine("Server started ...");

        while (true)
        {
            var context = await server.GetContextAsync();
            var request = context.Request;
            var response = context.Response;

            using var output = new StreamWriter(context.Response.OutputStream);

            if (request.RawUrl == "/favicon.ico")
            {
                var bytes = File.ReadAllBytes("icon.ico");

                output.Write(bytes);
            }

            if (request.RawUrl == "/conectJSON")
            {
                var json = await File.ReadAllTextAsync("persons.json");
                List<Person>? persons = JsonConvert.DeserializeObject<List<Person>>(json);

                await output.WriteLineAsync(FormatData(persons));
            }
            else if (request.RawUrl == "/conectDB")
            {
                var persons = repository.GetUser();

                await output.WriteLineAsync(FormatData(persons));
            }
            else if (request.QueryString.GetValues("search") != null)
            {
                var persons = repository.GetUserByName(request.QueryString.GetValues("search").FirstOrDefault());

                await output.WriteLineAsync(FormatData(persons));
            }
            else if (request.RawUrl == "/currentDay")
            {
                await output.WriteLineAsync("<h1>Today is " +
                    DateTime.Now.DayOfWeek + ", " +
                    DateTime.Now.Month + " " + DateTime.Now.Day +
                    "</h1>");
            }
            else if (request.RawUrl == "/currentYear")
            {
                await output.WriteLineAsync("<h1>Today is " +
                    DateTime.Now.Year + "</h1>");
            }
            else if (request.QueryString.GetValues("A") != null && 
                     request.QueryString.GetValues("B") != null)
            {
                double answer = 0;
                double a = 0;
                double b = 0;

                a = Convert.ToDouble(request.QueryString.GetValues("A")[0]);
                b = Convert.ToDouble(request.QueryString.GetValues("B")[0]);

                if (request.RawUrl.StartsWith("/SUM")) answer = a + b;
                else if (request.RawUrl.StartsWith("/*")) answer = a * b;
                else if (request.RawUrl.StartsWith("//")) answer = a / b;
                else if (request.RawUrl.StartsWith("/-")) answer = a - b;

                await output.WriteLineAsync("<h1>Equals: " + answer + "</h1>");
            }
        }

        server.Stop();
    }
}

