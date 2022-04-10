--reader_1 = newcamd({
--     name = "Reader #0",
--     host = "ucs1.u7c.biz",
--     port = 10003,
--     user = "taf_321",
--    pass = "laks98",
--})

reader_0 = newcamd({
    name = "Reader #0",
    host = "stream3.ilimnet.ru",
    port = 40000,
    user = "local1",
    pass = "local1",
})

reader_1 = newcamd({
    name = "Reader #1",
    host = "stream3.ilimnet.ru",
    port = 40002,
    user = "local1",
    pass = "local1",
})

adapter_0 = dvb_tune({
    adapter = "2",
    type = "S2",
    tp = "11760:H:28800",
    lnb_sharing = "false",
})

make_channel({
    name = "Extreme Sport",	input = {"dvb://adapter_0#pnr=1304&cam=reader_0"},output = {"udp://235.1.0.33:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "ТМВ",		input = {"dvb://adapter_0#pnr=1305&cam=reader_0"},output = {"udp://235.1.0.34:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Эгоист ТВ",		input = {"dvb://adapter_0#pnr=1312&cam=reader_1"},output = {"udp://235.1.0.37:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Ню Арт ТВ",		input = {"dvb://adapter_0#pnr=1313&cam=reader_1"},output = {"udp://235.1.0.38:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Rusong",		input = {"dvb://adapter_0#pnr=1314&cam=reader_0"},output = {"udp://235.1.0.39:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Playboy TV",	input = {"dvb://adapter_0#pnr=1315&cam=reader_1"},output = {"udp://235.1.0.40:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "O-la-la",		input = {"dvb://adapter_0#pnr=1316&cam=reader_1"},output = {"udp://235.1.0.41:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Детский",		input = {"dvb://adapter_0#pnr=1318&cam=reader_1"},output = {"udp://235.1.0.42:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "ЗооПарк",		input = {"dvb://adapter_0#pnr=1319&cam=reader_0"},output = {"udp://235.1.0.43:32768"},
})

make_channel({
    name = "Еврокино",		input = {"dvb://adapter_0#pnr=1320&cam=reader_0"},output = {"udp://235.1.0.44:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Русский Иллюзион",	input = {"dvb://adapter_0#pnr=1321&cam=reader_0"},output = {"udp://235.1.0.45:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Иллюзион +",	input = {"dvb://adapter_0#pnr=1322&cam=reader_0"},output = {"udp://235.1.0.46:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Brazzers TV Europe",input = {"dvb://adapter_0#pnr=1323&cam=reader_1"},output = {"udp://235.1.0.47:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
     name = "Mezzo Live HD",	input = {"dvb://adapter_0#pnr=1324&cam=reader_0"},output = {"udp://235.1.0.35:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
     name = "MGM HD",		input = {"dvb://adapter_0#pnr=1325&cam=reader_0"},output = {"udp://235.1.0.36:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
     name = "Katun TV",		input = {"dvb://adapter_0#pnr=1302"},output = {"udp://235.1.1.84:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
     name = "Telekanal Football",	input = {"dvb://adapter_0#pnr=1301&cam=reader_0"},output = {"udp://235.1.11.184:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
     name = "Soverchenno Sekretno",	input = {"dvb://adapter_0#pnr=1309&cam=reader_0"},output = {"udp://235.1.11.185:32768#pass_sdt&pass_eit&sync"},
})



adapter_1 = dvb_tune({
    adapter = "3",
    type = "S2",
    tp = "11920:H:28800",
    lnb_sharing = "true",
})

make_channel({
    name = "History",		input = {"dvb://adapter_1#pnr=1201&cam=reader_0"},output = {"udp://235.1.0.48:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Охота и Рыбалка",	input = {"dvb://adapter_1#pnr=1204&cam=reader_0"},output = {"udp://235.1.0.49:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Мир Увлечений",	input = {"dvb://adapter_1#pnr=1205&cam=reader_0"},output = {"udp://235.1.0.50:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "RTG HD",		input = {"dvb://adapter_1#pnr=1206&cam=reader_1"},output = {"udp://235.1.0.51:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "ЕГЭ",		input = {"dvb://adapter_1#pnr=1210&cam=reader_0"},output = {"udp://235.1.0.53:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Театр",		input = {"dvb://adapter_1#pnr=1214&cam=reader_0"},output = {"udp://235.1.0.54:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Paramount Comedy",	input = {"dvb://adapter_1#pnr=1215&cam=reader_0"},output = {"udp://235.1.0.55:32768#pass_sdt&pass_eit&sync"},
})


make_channel({
    name = "Ocean TV", timeout = 3,	input = {"dvb://adapter_1#pnr=1218&cam=reader_0"},output = {"udp://235.1.0.57:32768#pass_sdt&pass_eit"},
})

make_channel({
    name = "Мир Сериала",	input = {"dvb://adapter_1#pnr=1219&cam=reader_0"},output = {"udp://235.1.0.58:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Детский мир",	input = {"dvb://adapter_1#pnr=1220&cam=reader_0"},output = {"udp://235.1.0.59:32768#pass_sdt&pass_eit&sync"},
})


make_channel({
    name = "Шансон ТВ",		input = {"dvb://adapter_1#pnr=1221&cam=reader_0"},output = {"udp://235.1.0.32:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "F'l HD",		input = {"dvb://adapter_1#pnr=1223&cam=reader_0"},output = {"udp://235.1.11.192:32768#sync"},
})

make_channel({
    name = "Pingvin Lolo",		input = {"dvb://adapter_1#pnr=1222&cam=reader_0"},output = {"udp://235.1.11.186:32768#pass_sdt&pass_eit&sync"},
})

-- make_channel({
--     name = "Ya",		input = {"dvb://adapter_1#pnr=1202&cam=reader_0"},output = {"udp://235.1.11.192:32768#pass_sdt&pass_eit&sync"},
-- })

--reader_0 = newcamd({
--     name = "Reader #1",
--     host = "ucs1.u7c.biz",
--     port = 10023,
--     user = "taf_321",
--     pass = "laks98",
--})

adapter_2 = dvb_tune({
    adapter = "6",
    type = "S2",
    tp = "11840:H:28800",
    lnb_sharing = "true",
})

make_channel({
    name = "Match! Football 1",	input = {"dvb://adapter_2#pnr=801&cam=reader_1"},output = {"udp://235.1.0.150:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Match! Footbal 2",		input = {"dvb://adapter_2#pnr=802&cam=reader_1"},output = {"udp://235.1.0.151:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Match! Footbal 3",		input = {"dvb://adapter_2#pnr=803&cam=reader_1"},output = {"udp://235.1.0.152:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Match! Nash sport",		input = {"dvb://adapter_2#pnr=806&cam-reader_1"},output = {"udp://235.1.0.154:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Slow HD",	input = {"dvb://adapter_2#pnr=809&cam=reader_2"},output = {"udp://235.1.0.155:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Animal Planet HD",		input = {"dvb://adapter_2#pnr=810&cam=reader_1"},output = {"udp://235.1.0.156:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Amedia Premium HD",		input = {"dvb://adapter_2#pnr=812&cam=reader_1"},output = {"udp://235.1.0.157:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Bridge TV",		input = {"dvb://adapter_2#pnr=816&cam=reader_1"},output = {"udp://235.1.0.158:32768#pass_sdt&pass_eit&sync"},
})


adapter_3 = dvb_tune({
    adapter = "7",
    type = "S2",
    tp = "11800:H:28800",
    lnb_sharing = "true",
})

make_channel({
    name = "TV1000 Premium HD",		input = {"dvb://adapter_3#pnr=1401&cam=reader_1"},output = {"udp://235.1.0.159:32768#sync&pass_sdt_pass_eit"},
})

make_channel({
    name = "TV1000 Megahit HD",	input = {"dvb://adapter_3#pnr=1402&cam=reader_1"},output = {"udp://235.1.0.160:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "TV1000 Comedy",	input = {"dvb://adapter_3#pnr=1403&cam=reader_1"},output = {"udp://235.1.0.161:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Eurosport 1 HD",		input = {"dvb://adapter_3#pnr=1404&cam=reader_1"},output = {"udp://235.1.0.162:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Eurosport 2 HD",		input = {"dvb://adapter_3#pnr=1405&cam=reader_1"},output = {"udp://235.1.0.163:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Zhivaya Priroda HD",		input = {"dvb://adapter_3#pnr=1406&cam=reader_0"},output = {"udp://235.1.0.164:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Kino HD TV",		input = {"dvb://adapter_3#pnr=1408&cam=reader_0"},output = {"udp://235.1.0.165:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Dange TV",		input = {"dvb://adapter_3#pnr=1409&cam=reader_1"},output = {"udp://235.1.0.166:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "TopSong TV",		input = {"dvb://adapter_3#pnr=1410&cam=reader_1"},output = {"udp://235.1.0.167:32768#pass_sdt&pass_eit&sync"},
})

adapter_4 = dvb_tune({
    adapter = "1",
    type = "S2",
    tp = "11960:H:28800",
    lnb_sharing = "true",
})

make_channel({
    name = "Perviy kanal HD (+4)",input = {"dvb://adapter_4#pnr=904&cam=reader_1"},output = {"udp://235.1.0.168:32768#pass_sdt&cas_data=0042&pass_eit&sync"},
})

make_channel({
    name = "Rossiya HD",	input = {"dvb://adapter_4#pnr=901&cam=reader_1"},output = {"udp://235.1.0.169:32768#pass_sdt&cas_data=0042&pass_eit&sync"},
})

make_channel({
    name = "Travel Channel HD",	input = {"dvb://adapter_4#pnr=903&cam=reader_0"},output = {"udp://235.1.0.170:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Discovery Science",	input = {"dvb://adapter_4#pnr=914&cam=reader_1"},output = {"udp://235.1.0.172:32768#pass_sdt&pass_eit&sync&cbr=8"},
})

make_channel({
    name = "Food Network",	input = {"dvb://adapter_4#pnr=916&cam=reader_0"},output = {"udp://235.1.0.173:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Shant TV",	input = {"dvb://adapter_4#pnr=915&cam=reader_0"},output = {"udp://235.1.0.174:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Slow",	input = {"dvb://adapter_4#pnr=918&cam=reader_0"},output = {"udp://235.1.0.175:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Noise",		input = {"dvb://adapter_4#pnr=910&cam=reader_0"},output = {"udp://235.1.0.176:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Fine Living",		input = {"dvb://adapter_4#pnr=920&cam=reader_0"},output = {"udp://235.1.0.177:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Nashe TV",	input = {"dvb://adapter_4#pnr=919&cam=reader_0"},output = {"udp://235.1.0.178:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Uspeh",	input = {"dvb://adapter_4#pnr=908"},output = {"udp://235.1.0.179:32768#pass_sdt&pass_eit&sync"},
})


adapter_5 = dvb_tune({
    adapter = "0",
    type = "S2",
    tp = "12120:H:28800",
    lnb_sharing = "true",
})

make_channel({
    name = "C-music HD",	input = {"dvb://adapter_5#pnr=501&cam=reader_0"},output = {"udp://235.1.0.180:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Match! HD",		input = {"dvb://adapter_5#pnr=502&cam=reader_0"},output = {"udp://235.1.0.181:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Outdoor Channel International HD",	input = {"dvb://adapter_5#pnr=503&cam=reader_0"},output = {"udp://235.1.0.182:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "SET Russia HD",	input = {"dvb://adapter_5#pnr=504&cam=reader_0"},output = {"udp://235.1.0.183:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "TV XXI",		input = {"dvb://adapter_5#pnr=507&cam=reader_0"},output = {"udp://235.1.0.184:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Box TV",		input = {"dvb://adapter_5#pnr=508&cam=reader_0"},output = {"udp://235.1.0.185:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "RBC TV",		input = {"dvb://adapter_5#pnr=511&cam=reader_0"},output = {"udp://235.1.0.187:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Sony Sci-Fi Russia",		input = {"dvb://adapter_5#pnr=512&cam=reader_0"},output = {"udp://235.1.0.188:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Nostalgia",		input = {"dvb://adapter_5#pnr=514&cam=reader_0"},output = {"udp://235.1.0.189:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Avto24",		input = {"dvb://adapter_5#pnr=517&cam=reader_0"},output = {"udp://235.1.0.190:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Mir Belogorya",		input = {"dvb://adapter_5#pnr=517"},output = {"udp://235.1.0.191:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Pro100",		input = {"dvb://adapter_5#pnr=509&cam=reader_0"},output = {"udp://235.1.11.190:32768#pass_sdt&pass_eit&sync"},
})

adapter_6 = dvb_tune({
    adapter = "4",
    type = "S",
    tp = "12560:V:30000",
})

make_channel({
    name = "Da Vinchi Learning",input = {"dvb://adapter_6#pnr=1501&cam=reader_1"},output = {"udp://235.1.0.61:32768#pass_sdt&cas_data=0042&pass_eit&sync"},
})

make_channel({
    name = "TV 1000 Ru Kino",	input = {"dvb://adapter_6#pnr=1502&cam=reader_1"},output = {"udp://235.1.0.62:32768#pass_sdt&cas_data=0042&pass_eit&sync"},
})

make_channel({
    name = "TV1000 Action",	input = {"dvb://adapter_6#pnr=1503&cam=reader_1"},output = {"udp://235.1.0.63:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "TV1000",		input = {"dvb://adapter_6#pnr=1504&cam=reader_1"},output = {"udp://235.1.0.64:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Viasat Explore",	input = {"dvb://adapter_6#pnr=1505&cam=reader_1"},output = {"udp://235.1.0.65:32768#pass_sdt&pass_eit&sync&cbr=8"},
})

make_channel({
    name = "Viasat History",	input = {"dvb://adapter_6#pnr=1506&cam=reader_1"},output = {"udp://235.1.0.66:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Viasat Nature",	input = {"dvb://adapter_6#pnr=1507&cam=reader_1"},output = {"udp://235.1.0.67:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Viasat Sport",	input = {"dvb://adapter_6#pnr=1508&cam=reader_1"},output = {"udp://235.1.0.68:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "КХЛ HD",		input = {"dvb://adapter_6#pnr=1510&cam=reader_0"},output = {"udp://235.1.0.69:32768#pass_sdt&pass_eit&sync"},
})

--make_channel({
--    name = "Eurosport", iimeout = 5, input = {"dvb://adapter_6#pnr=1511&cam=reader_10"},output = {"udp://235.1.0.85:32768#pass_sdt&pass_eit&sync"},
--})

--make_channel({
--    name = "Eurosport 2",	input = {"dvb://adapter_6#pnr=1512&cam=reader_10"},output = {"udp://235.1.0.86:32768#pass_sdt&pass_eit&sync"},
--})


adapter_7 = dvb_tune({
    adapter = "5",
    type = "S2",
    tp = "12600:V:30000",
    lnb_sharing = "true",
})

make_channel({
    name = "Travel Channel",	input = {"dvb://adapter_7#pnr=204&cam=reader_0"},output = {"udp://235.1.0.70:32768#pass_sdt&pass_eit&sync"},http_keep_active = "-1",
})

make_channel({
    name = "Gulli",		input = {"dvb://adapter_7#pnr=216&cam=reader_0"},output = {"udp://235.1.0.71:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Евроновости",	input = {"dvb://adapter_7#pnr=222&cam=reader_0"},output = {"udp://235.1.0.72:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Zee Russia",	input = {"dvb://adapter_7#pnr=229&cam=reader_0"},output = {"udp://235.1.0.73:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "TiJi",		input = {"dvb://adapter_7#pnr=231&cam=reader_0"},output = {"udp://235.1.0.74:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Europa Plus TV",		input = {"dvb://adapter_7#pnr=207&cam=reader_0"},output = {"udp://235.1.11.74:32768#pass_sdt&pass_eit&sync"},
})

make_channel({
    name = "Morskoy",		input = {"dvb://adapter_7#pnr=208&cam=reader_0"},output = {"udp://235.1.0.171:32768#pass_sdt&pass_eit&sync"},
})
