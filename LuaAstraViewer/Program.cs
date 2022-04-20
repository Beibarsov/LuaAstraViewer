// See https://aka.ms/new-console-template for more information



bool isReading = false;



List<string> Blocks = new List<string>();
MainController mainController = new MainController();
LuaReader luaReader = new LuaReader();
List<Parametr> BlocksParametrs = new List<Parametr>();


List<string> list = luaReader.GetListOfLua(@"85E-all.lua");
mainController.CreateListParamerts(list);


BlocksParametrs = mainController.GetListParametrs();

Console.WriteLine($"Адаптеров: {BlocksParametrs.Where(x => x is Adapter).Count()}");
Console.WriteLine($"Ридеров: {BlocksParametrs.Where(x => x is Reader).Count()}");
Console.WriteLine($"Каналов: {BlocksParametrs.Where(x => x is Channel).Count()}");


List<Channel> ChannelsList = BlocksParametrs.OfType<Channel>().ToList();
List<Adapter> AdaptersList = BlocksParametrs.OfType<Adapter>().ToList();



Console.WriteLine("Нашлись следующие адаптеры: ");
foreach(Adapter adapter in AdaptersList)
{
    Console.WriteLine(adapter.Name);
    Console.WriteLine(adapter.Tp);
}


Console.WriteLine("Каналов список:");
foreach (Channel chan in BlocksParametrs.Where(x => x is Channel))
{
    Console.WriteLine(chan.Name);
    Console.WriteLine(chan.Adapter.Name);
}



Console.WriteLine("Каналов в адаптере 2: ");
foreach (Channel chan in ChannelsList.Where(x => x.Adapter.Equals(AdaptersList[1])))
{
    Console.Write(chan.Name);

   
}



