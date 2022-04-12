public class MainController
{

   public List<Parametr> ListParametrs = new List<Parametr>();


    public void CreateListParamerts(List<string> Blocks)
    {
        foreach (string line in Blocks)
        {

            if (line.StartsWith("reader"))
            {
                var parametr = new Reader();

                //newBlockText.Type = "Шара-Параметры";
                ListParametrs.Add(parametr);

            }
            if (line.StartsWith("adapter"))
            {
                var parametr = new Adapter();
                string[] separators1 = new string[] { ",", "({", "})" };
                string[] parametrs = line.Split(separators1, StringSplitOptions.RemoveEmptyEntries);
                parametr.Name = parametrs[0].Replace("adapter_", "").Replace(" = dvb_tune", "").Trim();
                // newBlockText.Type = "Тест";
                ListParametrs.Add(parametr);
            }

        }

        foreach (string line in Blocks)
        {
            if (line.StartsWith("make_channel"))
            {
                var parametr = new Channel();
                string[] separators1 = new string[] { ",", "({", "})" };
                string[] parametrs = line.Split(separators1, StringSplitOptions.RemoveEmptyEntries);
                parametr.Name = parametrs[1].Replace("name = ", "").Replace("\"", "").Trim();
                string numAdapter = parametrs[2].Trim().Replace("input = {\"dvb://adapter_", "").Remove(1);
                parametr.Adapter = (Adapter)ListParametrs.Where(x => x is Adapter).Where(x => x.Name == numAdapter).First();
                ListParametrs.Add(parametr);
            }
        }

    }

    public List<Parametr> GetListParametrs(){
        return ListParametrs;
    }
}