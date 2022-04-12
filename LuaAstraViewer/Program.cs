﻿// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");



//Console.WriteLine(sr.ReadToEnd());


bool isReading = false;
List<string> Blocks = new List<string>();

MainController mainController = new MainController();
LuaReader luaReader = new LuaReader();



List<Parametr> BlocksParametrs = new List<Parametr>();


List<string> list =  luaReader.GetListOfLua(@"85E-all.lua");
mainController.CreateListParamerts(list);

/*
foreach (string line in Blocks)
{

    if (line.StartsWith("reader"))
    {
        var parametr = new Reader();

        //newBlockText.Type = "Шара-Параметры";
        BlocksParametrs.Add(parametr);

    }
    if (line.StartsWith("adapter"))
    {
        var parametr = new Adapter();
        string[] separators1 = new string[] { ",", "({", "})" };
        string[] parametrs = line.Split(separators1, StringSplitOptions.RemoveEmptyEntries);
        parametr.Name = parametrs[0].Replace("adapter_", "").Replace(" = dvb_tune", "").Trim();
        // newBlockText.Type = "Тест";
        BlocksParametrs.Add(parametr);
    }
    
}

foreach(string line in Blocks){
    if (line.StartsWith("make_channel"))
    {
        var parametr = new Channel();
        string[] separators1 = new string[] { ",", "({", "})" };
        string[] parametrs = line.Split(separators1, StringSplitOptions.RemoveEmptyEntries);
        parametr.Name = parametrs[1].Replace("name = ", "").Replace("\"", "").Trim();
        string numAdapter = parametrs[2].Trim().Replace("input = {\"dvb://adapter_", "").Remove(1);
        parametr.Adapter = (Adapter)BlocksParametrs.Where(x => x is Adapter).Where(x=>x.Name == numAdapter).First();
        BlocksParametrs.Add(parametr);
    }
}

*/
BlocksParametrs = mainController.GetListParametrs();
Console.WriteLine($"Адаптеров: {BlocksParametrs.Where(x => x is Adapter).Count()}");
Console.WriteLine($"Ридеров: {BlocksParametrs.Where(x => x is Reader).Count()}");
Console.WriteLine($"Каналов: {BlocksParametrs.Where(x => x is Channel).Count()}");

Console.WriteLine("Каналов список:");
foreach (Channel chan in BlocksParametrs.Where(x => x is Channel))
{
    Console.WriteLine(chan.Name);
    Console.WriteLine(chan.Adapter.Name);
}


