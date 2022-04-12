// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");


StreamReader sr = new StreamReader(@"85E-all.lua");
//Console.WriteLine(sr.ReadToEnd());


bool isReading = false;
List<string> Blocks = new List<string>();
string newline = "";
List<Parametr> BlockTexts = new List<Parametr>();

while (!sr.EndOfStream)
{

    string line = sr.ReadLine();
    if (line.StartsWith("--"))
    {
        continue;
    }
    if (line.Contains("({"))
    {

        isReading = true;

    }
    if (isReading)
        newline += line;


    if (line.Equals("})"))
    {

        isReading = false;
        Blocks.Add(newline);
        newline = "";
    }
}

foreach (string line in Blocks)
{

    if (line.StartsWith("reader"))
    {
        var parametr = new Reader();

        //newBlockText.Type = "Шара-Параметры";
        BlockTexts.Add(parametr);

    }
    if (line.StartsWith("adapter"))
    {
        var parametr = new Adapter();
        string[] separators1 = new string[] { ",", "({", "})" };
        string[] parametrs = line.Split(separators1, StringSplitOptions.RemoveEmptyEntries);
        parametr.Name = parametrs[0].Replace("adapter_", "").Replace(" = dvb_tune", "").Trim();
        // newBlockText.Type = "Тест";
        BlockTexts.Add(parametr);
    }
    
}

/*foreach (var name in BlockTexts.Where(x => x is Adapter).Select(x => x.Name))
{
    Console.WriteLine(name);
}
*/
foreach(string line in Blocks){
    if (line.StartsWith("make_channel"))
    {
        var parametr = new Channel();
        string[] separators1 = new string[] { ",", "({", "})" };
        string[] parametrs = line.Split(separators1, StringSplitOptions.RemoveEmptyEntries);
        parametr.Name = parametrs[1].Replace("name = ", "").Replace("\"", "").Trim();
        string numAdapter = parametrs[2].Trim().Replace("input = {\"dvb://adapter_", "").Remove(1);
        parametr.Adapter = (Adapter)BlockTexts.Where(x => x is Adapter).Where(x=>x.Name == numAdapter).First();
        BlockTexts.Add(parametr);
    }
}


Console.WriteLine($"Адаптеров: {BlockTexts.Where(x => x is Adapter).Count()}");
Console.WriteLine($"Ридеров: {BlockTexts.Where(x => x is Reader).Count()}");
Console.WriteLine($"Каналов: {BlockTexts.Where(x => x is Channel).Count()}");

Console.WriteLine("Каналов список:");
foreach (Channel name in BlockTexts.Where(x => x is Channel))
{
    Console.WriteLine(name.Name);
    Console.WriteLine(name.Adapter.Name);
}

Console.WriteLine("Адаптеров список:");


