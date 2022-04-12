public class LuaReader
{

    public string Path { get; set; }


    public List<string> GetListOfLua(string path)
    {
        bool isReading = false;
        List<string> resultList = new List<string>();
        StreamReader sr = new StreamReader(path);
        string newline = "";

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
                resultList.Add(newline);
                newline = "";
            }
        }


        return resultList;
    }

}