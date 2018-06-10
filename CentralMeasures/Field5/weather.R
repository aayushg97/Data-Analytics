fil <- read.csv("WEATHER.csv")

tablep <- function(lioli){
	message(sprintf("%s",lioli[1]))
	message(sprintf("Month		Period        Years        Min Temp        Max Temp        Mean Rainfall \n"))
	itr <- 1
	#print(typeof(lioli[[2]][[itr]]))
	for(dt in lioli[[2]]){
		message(sprintf("%s        %s        %d        %f        %f        %f",lioli[[2]][[itr]],lioli[[3]][[itr]],lioli[[4]][[itr]],lioli[[5]][[itr]],lioli[[6]][[itr]],lioli[[7]][[itr]]))
		itr <- itr + 1
	}
	message(sprintf("\n"))
}

cubetablep <- function(cuboid){
	for(dt in cuboid){
		tablep(dt)
	}
}


cube <- list(
	list("Abu",fil$Month[1:12],fil$Period[1:12],fil$Years[1:12],fil$Min_Temp[1:12],fil$Max_Temp[1:12],fil$Mean_Rainfall[1:12]),
	list("Agartala_A",fil$Month[13:24],fil$Period[13:24],fil$Years[13:24],fil$Min_Temp[13:24],fil$Max_Temp[13:24],fil$Mean_Rainfall[13:24]),
	list("Agra",fil$Month[25:36],fil$Period[25:36],fil$Years[25:36],fil$Min_Temp[25:36],fil$Max_Temp[25:36],fil$Mean_Rainfall[25:36]),
	list("Ahmedabad",fil$Month[37:48],fil$Period[37:48],fil$Years[37:48],fil$Min_Temp[37:48],fil$Max_Temp[37:48],fil$Mean_Rainfall[37:48]),
	list("Aijal_Aizwal",fil$Month[49:60],fil$Period[49:60],fil$Years[49:60],fil$Min_Temp[49:60],fil$Max_Temp[49:60],fil$Mean_Rainfall[49:60]),
	list("Ajmer",fil$Month[61:72],fil$Period[61:72],fil$Years[61:72],fil$Min_Temp[61:72],fil$Max_Temp[61:72],fil$Mean_Rainfall[61:72]),
	list("Akola_A",fil$Month[73:84],fil$Period[73:84],fil$Years[73:84],fil$Min_Temp[73:84],fil$Max_Temp[73:84],fil$Mean_Rainfall[73:84]),
	list("Allahabad",fil$Month[85:96],fil$Period[85:96],fil$Years[85:96],fil$Min_Temp[85:96],fil$Max_Temp[85:96],fil$Mean_Rainfall[85:96]),
	list("Ambikapur",fil$Month[97:108],fil$Period[97:108],fil$Years[97:108],fil$Min_Temp[97:108],fil$Max_Temp[97:108],fil$Mean_Rainfall[97:108]),
	list("Amini_Divi",fil$Month[109:120],fil$Period[109:120],fil$Years[109:120],fil$Min_Temp[109:120],fil$Max_Temp[109:120],fil$Mean_Rainfall[109:120]),
	list("Amritsar_Rajasansi",fil$Month[121:132],fil$Period[121:132],fil$Years[121:132],fil$Min_Temp[121:132],fil$Max_Temp[121:132],fil$Mean_Rainfall[121:132]),
	list("Anantpur",fil$Month[133:144],fil$Period[133:144],fil$Years[133:144],fil$Min_Temp[133:144],fil$Max_Temp[133:144],fil$Mean_Rainfall[133:144]),
	list("Androth",fil$Month[145:156],fil$Period[145:156],fil$Years[145:156],fil$Min_Temp[145:156],fil$Max_Temp[145:156],fil$Mean_Rainfall[145:156]),
	list("Aurangabad",fil$Month[157:168],fil$Period[157:168],fil$Years[157:168],fil$Min_Temp[157:168],fil$Max_Temp[157:168],fil$Mean_Rainfall[157:168]),
	list("Balasore",fil$Month[169:180],fil$Period[169:180],fil$Years[169:180],fil$Min_Temp[169:180],fil$Max_Temp[169:180],fil$Mean_Rainfall[169:180]),
	list("Bangalore",fil$Month[181:192],fil$Period[181:192],fil$Years[181:192],fil$Min_Temp[181:192],fil$Max_Temp[181:192],fil$Mean_Rainfall[181:192]),
	list("Bareilly",fil$Month[193:204],fil$Period[193:204],fil$Years[193:204],fil$Min_Temp[193:204],fil$Max_Temp[193:204],fil$Mean_Rainfall[193:204]),
	list("Baroda_A",fil$Month[205:216],fil$Period[205:216],fil$Years[205:216],fil$Min_Temp[205:216],fil$Max_Temp[205:216],fil$Mean_Rainfall[205:216]),
	list("Belgaum_Samra",fil$Month[217:228],fil$Period[217:228],fil$Years[217:228],fil$Min_Temp[217:228],fil$Max_Temp[217:228],fil$Mean_Rainfall[217:228]),
	list("Bhagalpur",fil$Month[229:240],fil$Period[229:240],fil$Years[229:240],fil$Min_Temp[229:240],fil$Max_Temp[229:240],fil$Mean_Rainfall[229:240]),
	list("Bhatinda",fil$Month[241:252],fil$Period[241:252],fil$Years[241:252],fil$Min_Temp[241:252],fil$Max_Temp[241:252],fil$Mean_Rainfall[241:252]),
	list("Bhopal_Bairagarh",fil$Month[253:264],fil$Period[253:264],fil$Years[253:264],fil$Min_Temp[253:264],fil$Max_Temp[253:264],fil$Mean_Rainfall[253:264]),
	list("Bhubaneshwar_A",fil$Month[265:276],fil$Period[265:276],fil$Years[265:276],fil$Min_Temp[265:276],fil$Max_Temp[265:276],fil$Mean_Rainfall[265:276]),
	list("Bhuj_Rudramata",fil$Month[277:288],fil$Period[277:288],fil$Years[277:288],fil$Min_Temp[277:288],fil$Max_Temp[277:288],fil$Mean_Rainfall[277:288]),
	list("Bikaner",fil$Month[289:300],fil$Period[289:300],fil$Years[289:300],fil$Min_Temp[289:300],fil$Max_Temp[289:300],fil$Mean_Rainfall[289:300]),
	list("Cannanore",fil$Month[301:312],fil$Period[301:312],fil$Years[301:312],fil$Min_Temp[301:312],fil$Max_Temp[301:312],fil$Mean_Rainfall[301:312]),
	list("Chandigarh",fil$Month[313:324],fil$Period[313:324],fil$Years[313:324],fil$Min_Temp[313:324],fil$Max_Temp[313:324],fil$Mean_Rainfall[313:324]),
	list("Chennai_Minambakkam",fil$Month[325:336],fil$Period[325:336],fil$Years[325:336],fil$Min_Temp[325:336],fil$Max_Temp[325:336],fil$Mean_Rainfall[325:336]),
	list("Cherrapunji",fil$Month[337:348],fil$Period[337:348],fil$Years[337:348],fil$Min_Temp[337:348],fil$Max_Temp[337:348],fil$Mean_Rainfall[337:348]),
	list("Coimbatore_Pilamedu",fil$Month[349:360],fil$Period[349:360],fil$Years[349:360],fil$Min_Temp[349:360],fil$Max_Temp[349:360],fil$Mean_Rainfall[349:360]),
	list("Cooch_Behar",fil$Month[361:372],fil$Period[361:372],fil$Years[361:372],fil$Min_Temp[361:372],fil$Max_Temp[361:372],fil$Mean_Rainfall[361:372]),
	list("Darjeeling",fil$Month[373:384],fil$Period[373:384],fil$Years[373:384],fil$Min_Temp[373:384],fil$Max_Temp[373:384],fil$Mean_Rainfall[373:384]),
	list("Dehra_Dun",fil$Month[385:396],fil$Period[385:396],fil$Years[385:396],fil$Min_Temp[385:396],fil$Max_Temp[385:396],fil$Mean_Rainfall[385:396]),
	list("Dharmsala",fil$Month[397:408],fil$Period[397:408],fil$Years[397:408],fil$Min_Temp[397:408],fil$Max_Temp[397:408],fil$Mean_Rainfall[397:408]),
	list("Dibrugarh_Mohanbari",fil$Month[409:420],fil$Period[409:420],fil$Years[409:420],fil$Min_Temp[409:420],fil$Max_Temp[409:420],fil$Mean_Rainfall[409:420]),
	list("Gadag",fil$Month[421:432],fil$Period[421:432],fil$Years[421:432],fil$Min_Temp[421:432],fil$Max_Temp[421:432],fil$Mean_Rainfall[421:432]),
	list("Gangtok",fil$Month[433:444],fil$Period[433:444],fil$Years[433:444],fil$Min_Temp[433:444],fil$Max_Temp[433:444],fil$Mean_Rainfall[433:444]),
	list("Gaya",fil$Month[445:456],fil$Period[445:456],fil$Years[445:456],fil$Min_Temp[445:456],fil$Max_Temp[445:456],fil$Mean_Rainfall[445:456]),
	list("Gopalpur",fil$Month[457:468],fil$Period[457:468],fil$Years[457:468],fil$Min_Temp[457:468],fil$Max_Temp[457:468],fil$Mean_Rainfall[457:468]),
	list("Gorakhpur",fil$Month[469:480],fil$Period[469:480],fil$Years[469:480],fil$Min_Temp[469:480],fil$Max_Temp[469:480],fil$Mean_Rainfall[469:480]),
	list("Gulbarga",fil$Month[481:492],fil$Period[481:492],fil$Years[481:492],fil$Min_Temp[481:492],fil$Max_Temp[481:492],fil$Mean_Rainfall[481:492]),
	list("Guwahati_Bhorjar",fil$Month[493:504],fil$Period[493:504],fil$Years[493:504],fil$Min_Temp[493:504],fil$Max_Temp[493:504],fil$Mean_Rainfall[493:504]),
	list("Gwalior",fil$Month[505:516],fil$Period[505:516],fil$Years[505:516],fil$Min_Temp[505:516],fil$Max_Temp[505:516],fil$Mean_Rainfall[505:516]),
	list("Hassan",fil$Month[517:528],fil$Period[517:528],fil$Years[517:528],fil$Min_Temp[517:528],fil$Max_Temp[517:528],fil$Mean_Rainfall[517:528]),
	list("Hissar",fil$Month[529:540],fil$Period[529:540],fil$Years[529:540],fil$Min_Temp[529:540],fil$Max_Temp[529:540],fil$Mean_Rainfall[529:540]),
	list("Hyderabad_A",fil$Month[541:552],fil$Period[541:552],fil$Years[541:552],fil$Min_Temp[541:552],fil$Max_Temp[541:552],fil$Mean_Rainfall[541:552]),
	list("Imphal_Tulihal",fil$Month[553:564],fil$Period[553:564],fil$Years[553:564],fil$Min_Temp[553:564],fil$Max_Temp[553:564],fil$Mean_Rainfall[553:564]),
	list("Indore",fil$Month[565:576],fil$Period[565:576],fil$Years[565:576],fil$Min_Temp[565:576],fil$Max_Temp[565:576],fil$Mean_Rainfall[565:576]),
	list("Jabalpur",fil$Month[577:588],fil$Period[577:588],fil$Years[577:588],fil$Min_Temp[577:588],fil$Max_Temp[577:588],fil$Mean_Rainfall[577:588]),
	list("Jagdalpur",fil$Month[589:600],fil$Period[589:600],fil$Years[589:600],fil$Min_Temp[589:600],fil$Max_Temp[589:600],fil$Mean_Rainfall[589:600]),
	list("Jaipur_Sanganer",fil$Month[601:612],fil$Period[601:612],fil$Years[601:612],fil$Min_Temp[601:612],fil$Max_Temp[601:612],fil$Mean_Rainfall[601:612]),
	list("Jaisalmer",fil$Month[613:624],fil$Period[613:624],fil$Years[613:624],fil$Min_Temp[613:624],fil$Max_Temp[613:624],fil$Mean_Rainfall[613:624]),
	list("Jammu",fil$Month[625:636],fil$Period[625:636],fil$Years[625:636],fil$Min_Temp[625:636],fil$Max_Temp[625:636],fil$Mean_Rainfall[625:636]),
	list("Jamshedpur",fil$Month[637:648],fil$Period[637:648],fil$Years[637:648],fil$Min_Temp[637:648],fil$Max_Temp[637:648],fil$Mean_Rainfall[637:648]),
	list("Jharsuguda",fil$Month[649:660],fil$Period[649:660],fil$Years[649:660],fil$Min_Temp[649:660],fil$Max_Temp[649:660],fil$Mean_Rainfall[649:660]),
	list("Jodhpur",fil$Month[661:672],fil$Period[661:672],fil$Years[661:672],fil$Min_Temp[661:672],fil$Max_Temp[661:672],fil$Mean_Rainfall[661:672]),
	list("Joshimath",fil$Month[673:684],fil$Period[673:684],fil$Years[673:684],fil$Min_Temp[673:684],fil$Max_Temp[673:684],fil$Mean_Rainfall[673:684]),
	list("Jullundur",fil$Month[685:696],fil$Period[685:696],fil$Years[685:696],fil$Min_Temp[685:696],fil$Max_Temp[685:696],fil$Mean_Rainfall[685:696]),
	list("Kanpur_A",fil$Month[697:708],fil$Period[697:708],fil$Years[697:708],fil$Min_Temp[697:708],fil$Max_Temp[697:708],fil$Mean_Rainfall[697:708]),
	list("Kanyakumari",fil$Month[709:720],fil$Period[709:720],fil$Years[709:720],fil$Min_Temp[709:720],fil$Max_Temp[709:720],fil$Mean_Rainfall[709:720]),
	list("Karnal",fil$Month[721:732],fil$Period[721:732],fil$Years[721:732],fil$Min_Temp[721:732],fil$Max_Temp[721:732],fil$Mean_Rainfall[721:732]),
	list("Khajuraho",fil$Month[733:744],fil$Period[733:744],fil$Years[733:744],fil$Min_Temp[733:744],fil$Max_Temp[733:744],fil$Mean_Rainfall[733:744]),
	list("Kodaikanal",fil$Month[745:756],fil$Period[745:756],fil$Years[745:756],fil$Min_Temp[745:756],fil$Max_Temp[745:756],fil$Mean_Rainfall[745:756]),
	list("Kohima",fil$Month[757:768],fil$Period[757:768],fil$Years[757:768],fil$Min_Temp[757:768],fil$Max_Temp[757:768],fil$Mean_Rainfall[757:768]),
	list("Kolkata_Alipur",fil$Month[769:780],fil$Period[769:780],fil$Years[769:780],fil$Min_Temp[769:780],fil$Max_Temp[769:780],fil$Mean_Rainfall[769:780]),
	list("Kota_A",fil$Month[781:792],fil$Period[781:792],fil$Years[781:792],fil$Min_Temp[781:792],fil$Max_Temp[781:792],fil$Mean_Rainfall[781:792]),
	list("Kozhikode_A",fil$Month[793:804],fil$Period[793:804],fil$Years[793:804],fil$Min_Temp[793:804],fil$Max_Temp[793:804],fil$Mean_Rainfall[793:804]),
	list("Lucknow_Amausi",fil$Month[805:816],fil$Period[805:816],fil$Years[805:816],fil$Min_Temp[805:816],fil$Max_Temp[805:816],fil$Mean_Rainfall[805:816]),
	list("Ludhiana",fil$Month[817:828],fil$Period[817:828],fil$Years[817:828],fil$Min_Temp[817:828],fil$Max_Temp[817:828],fil$Mean_Rainfall[817:828]),
	list("Madurai_A",fil$Month[829:840],fil$Period[829:840],fil$Years[829:840],fil$Min_Temp[829:840],fil$Max_Temp[829:840],fil$Mean_Rainfall[829:840]),
	list("Mahabaleshwar",fil$Month[841:852],fil$Period[841:852],fil$Years[841:852],fil$Min_Temp[841:852],fil$Max_Temp[841:852],fil$Mean_Rainfall[841:852]),
	list("Malda",fil$Month[853:864],fil$Period[853:864],fil$Years[853:864],fil$Min_Temp[853:864],fil$Max_Temp[853:864],fil$Mean_Rainfall[853:864]),
	list("Manali",fil$Month[865:876],fil$Period[865:876],fil$Years[865:876],fil$Min_Temp[865:876],fil$Max_Temp[865:876],fil$Mean_Rainfall[865:876]),
	list("Mangalore_Bajpe",fil$Month[877:888],fil$Period[877:888],fil$Years[877:888],fil$Min_Temp[877:888],fil$Max_Temp[877:888],fil$Mean_Rainfall[877:888]),
	list("Masulipatnam",fil$Month[889:900],fil$Period[889:900],fil$Years[889:900],fil$Min_Temp[889:900],fil$Max_Temp[889:900],fil$Mean_Rainfall[889:900]),
	list("Minicoy",fil$Month[901:912],fil$Period[901:912],fil$Years[901:912],fil$Min_Temp[901:912],fil$Max_Temp[901:912],fil$Mean_Rainfall[901:912]),
	list("Mukteswar_Kumaun",fil$Month[913:924],fil$Period[913:924],fil$Years[913:924],fil$Min_Temp[913:924],fil$Max_Temp[913:924],fil$Mean_Rainfall[913:924]),
	list("Mumbai_Santa_Cruz",fil$Month[925:936],fil$Period[925:936],fil$Years[925:936],fil$Min_Temp[925:936],fil$Max_Temp[925:936],fil$Mean_Rainfall[925:936]),
	list("Mysore",fil$Month[937:948],fil$Period[937:948],fil$Years[937:948],fil$Min_Temp[937:948],fil$Max_Temp[937:948],fil$Mean_Rainfall[937:948]),
	list("Nagpur_Sonegaon",fil$Month[949:960],fil$Period[949:960],fil$Years[949:960],fil$Min_Temp[949:960],fil$Max_Temp[949:960],fil$Mean_Rainfall[949:960]),
	list("Nainital",fil$Month[961:972],fil$Period[961:972],fil$Years[961:972],fil$Min_Temp[961:972],fil$Max_Temp[961:972],fil$Mean_Rainfall[961:972]),
	list("Nasik",fil$Month[973:984],fil$Period[973:984],fil$Years[973:984],fil$Min_Temp[973:984],fil$Max_Temp[973:984],fil$Mean_Rainfall[973:984]),
	list("New_Delhi_Palam",fil$Month[985:996],fil$Period[985:996],fil$Years[985:996],fil$Min_Temp[985:996],fil$Max_Temp[985:996],fil$Mean_Rainfall[985:996]),
	list("New_Delhi_SFD",fil$Month[997:1008],fil$Period[997:1008],fil$Years[997:1008],fil$Min_Temp[997:1008],fil$Max_Temp[997:1008],fil$Mean_Rainfall[997:1008]),
	list("Palakkad_Palghat",fil$Month[1009:1020],fil$Period[1009:1020],fil$Years[1009:1020],fil$Min_Temp[1009:1020],fil$Max_Temp[1009:1020],fil$Mean_Rainfall[1009:1020]),
	list("Panjim",fil$Month[1021:1032],fil$Period[1021:1032],fil$Years[1021:1032],fil$Min_Temp[1021:1032],fil$Max_Temp[1021:1032],fil$Mean_Rainfall[1021:1032]),
	list("Parbhani",fil$Month[1033:1044],fil$Period[1033:1044],fil$Years[1033:1044],fil$Min_Temp[1033:1044],fil$Max_Temp[1033:1044],fil$Mean_Rainfall[1033:1044]),
	list("Pasighat",fil$Month[1045:1056],fil$Period[1045:1056],fil$Years[1045:1056],fil$Min_Temp[1045:1056],fil$Max_Temp[1045:1056],fil$Mean_Rainfall[1045:1056]),
	list("Patna_A",fil$Month[1057:1068],fil$Period[1057:1068],fil$Years[1057:1068],fil$Min_Temp[1057:1068],fil$Max_Temp[1057:1068],fil$Mean_Rainfall[1057:1068]),
	list("Pondicherry_A",fil$Month[1069:1080],fil$Period[1069:1080],fil$Years[1069:1080],fil$Min_Temp[1069:1080],fil$Max_Temp[1069:1080],fil$Mean_Rainfall[1069:1080]),
	list("Port_Blair",fil$Month[1081:1092],fil$Period[1081:1092],fil$Years[1081:1092],fil$Min_Temp[1081:1092],fil$Max_Temp[1081:1092],fil$Mean_Rainfall[1081:1092]),
	list("Pune",fil$Month[1093:1104],fil$Period[1093:1104],fil$Years[1093:1104],fil$Min_Temp[1093:1104],fil$Max_Temp[1093:1104],fil$Mean_Rainfall[1093:1104]),
	list("Raipur",fil$Month[1105:1116],fil$Period[1105:1116],fil$Years[1105:1116],fil$Min_Temp[1105:1116],fil$Max_Temp[1105:1116],fil$Mean_Rainfall[1105:1116]),
	list("Rajkot_A",fil$Month[1117:1128],fil$Period[1117:1128],fil$Years[1117:1128],fil$Min_Temp[1117:1128],fil$Max_Temp[1117:1128],fil$Mean_Rainfall[1117:1128]),
	list("Ranchi_A",fil$Month[1129:1140],fil$Period[1129:1140],fil$Years[1129:1140],fil$Min_Temp[1129:1140],fil$Max_Temp[1129:1140],fil$Mean_Rainfall[1129:1140]),
	list("Sambalpur",fil$Month[1141:1152],fil$Period[1141:1152],fil$Years[1141:1152],fil$Min_Temp[1141:1152],fil$Max_Temp[1141:1152],fil$Mean_Rainfall[1141:1152]),
	list("Shillong",fil$Month[1153:1164],fil$Period[1153:1164],fil$Years[1153:1164],fil$Min_Temp[1153:1164],fil$Max_Temp[1153:1164],fil$Mean_Rainfall[1153:1164]),
	list("Shimla",fil$Month[1165:1176],fil$Period[1165:1176],fil$Years[1165:1176],fil$Min_Temp[1165:1176],fil$Max_Temp[1165:1176],fil$Mean_Rainfall[1165:1176]),
	list("Silchar",fil$Month[1177:1188],fil$Period[1177:1188],fil$Years[1177:1188],fil$Min_Temp[1177:1188],fil$Max_Temp[1177:1188],fil$Mean_Rainfall[1177:1188]),
	list("Solapur",fil$Month[1189:1200],fil$Period[1189:1200],fil$Years[1189:1200],fil$Min_Temp[1189:1200],fil$Max_Temp[1189:1200],fil$Mean_Rainfall[1189:1200]),
	list("Sri_Niketan",fil$Month[1201:1212],fil$Period[1201:1212],fil$Years[1201:1212],fil$Min_Temp[1201:1212],fil$Max_Temp[1201:1212],fil$Mean_Rainfall[1201:1212]),
	list("Srinagar",fil$Month[1213:1224],fil$Period[1213:1224],fil$Years[1213:1224],fil$Min_Temp[1213:1224],fil$Max_Temp[1213:1224],fil$Mean_Rainfall[1213:1224]),
	list("Surat",fil$Month[1225:1236],fil$Period[1225:1236],fil$Years[1225:1236],fil$Min_Temp[1225:1236],fil$Max_Temp[1225:1236],fil$Mean_Rainfall[1225:1236]),
	list("Thiruvananthapuram",fil$Month[1237:1248],fil$Period[1237:1248],fil$Years[1237:1248],fil$Min_Temp[1237:1248],fil$Max_Temp[1237:1248],fil$Mean_Rainfall[1237:1248]),
	list("Tirupathy",fil$Month[1249:1260],fil$Period[1249:1260],fil$Years[1249:1260],fil$Min_Temp[1249:1260],fil$Max_Temp[1249:1260],fil$Mean_Rainfall[1249:1260]),
	list("Tura",fil$Month[1261:1272],fil$Period[1261:1272],fil$Years[1261:1272],fil$Min_Temp[1261:1272],fil$Max_Temp[1261:1272],fil$Mean_Rainfall[1261:1272]),
	list("Udaipur_Dabok",fil$Month[1273:1284],fil$Period[1273:1284],fil$Years[1273:1284],fil$Min_Temp[1273:1284],fil$Max_Temp[1273:1284],fil$Mean_Rainfall[1273:1284]),
	list("Uthagamandalam",fil$Month[1285:1296],fil$Period[1285:1296],fil$Years[1285:1296],fil$Min_Temp[1285:1296],fil$Max_Temp[1285:1296],fil$Mean_Rainfall[1285:1296]),
	list("Varanasi_Babatpur",fil$Month[1297:1308],fil$Period[1297:1308],fil$Years[1297:1308],fil$Min_Temp[1297:1308],fil$Max_Temp[1297:1308],fil$Mean_Rainfall[1297:1308]),
	list("Vijayawada",fil$Month[1309:1320],fil$Period[1309:1320],fil$Years[1309:1320],fil$Min_Temp[1309:1320],fil$Max_Temp[1309:1320],fil$Mean_Rainfall[1309:1320]),
	list("Vishakhapatnam",fil$Month[1321:1332],fil$Period[1321:1332],fil$Years[1321:1332],fil$Min_Temp[1321:1332],fil$Max_Temp[1321:1332],fil$Mean_Rainfall[1321:1332]))

names(cube) <- c("Abu","Agartala_A","Agra","Ahmedabad","Aijal_Aizwal","Ajmer","Akola_A","Allahabad","Ambikapur","Amini_Divi","Amritsar_Rajasansi","Anantpur","Androth","Aurangabad","Balasore","Bangalore","Bareilly","Baroda_A","Belgaum_Samra","Bhagalpur","Bhatinda","Bhopal_Bairagarh","Bhubaneshwar_A","Bhuj_Rudramata","Bikaner","Cannanore","Chandigarh","Chennai_Minambakkam","Cherrapunji","Coimbatore_Pilamedu","Cooch_Behar","Darjeeling","Dehra_Dun","Dharmsala","Dibrugarh_Mohanbari","Gadag","Gangtok","Gaya","Gopalpur","Gorakhpur","Gulbarga","Guwahati_Bhorjar","Gwalior","Hassan","Hissar","Hyderabad_A","Imphal_Tulihal","Indore","Jabalpur","Jagdalpur","Jaipur_Sanganer","Jaisalmer","Jammu","Jamshedpur","Jharsuguda","Jodhpur","Joshimath","Jullundur","Kanpur_A","Kanyakumari","Karnal","Khajuraho","Kodaikanal","Kohima","Kolkata_Alipur","Kota_A","Kozhikode_A","Lucknow_Amausi","Ludhiana","Madurai_A","Mahabaleshwar","Malda","Manali","Mangalore_Bajpe","Masulipatnam","Minicoy","Mukteswar_Kumaun","Mumbai_Santa_Cruz","Mysore","Nagpur_Sonegaon","Nainital","Nasik","New_Delhi_Palam","New_Delhi_SFD","Palakkad_Palghat","Panjim","Parbhani","Pasighat","Patna_A","Pondicherry_A","Port_Blair","Pune","Raipur","Rajkot_A","Ranchi_A","Sambalpur","Shillong","Shimla","Silchar","Solapur","Sri_Niketan","Srinagar","Surat","Thiruvananthapuram","Tirupathy","Tura","Udaipur_Dabok","Uthagamandalam","Varanasi_Babatpur","Vijayawada","Vishakhapatnam")

paste("Dice operation :- Weather of North-East cities")
Northeast <- list(cube$Agartala_A,cube$Aijal_Aizwal,cube$Gangtok,cube$Guwahati_Bhorjar,cube$Imphal_Tulihal,cube$Kohima,cube$Shillong)
cubetablep(Northeast)

paste("Slice operation :- Weather of Kolkata")
Kolkata <- cube$Kolkata_Alipur
tablep(Kolkata)

