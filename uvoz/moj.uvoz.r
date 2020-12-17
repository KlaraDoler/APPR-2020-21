library(readr)

stolpci <- c("LETO", "STAROST", "PRIMERI", "KOLEDARSKI_DNEVI", "ODSTOTEK_BS", 
             "IZGUBLJENI_KOLEDARSKI_DNEVI_NA_ZAPOSLENEGA", "STEVILO_PRIMEROV_NA_100_ZAPOSLENIH", 
             "POVPRECNO_TRAJANJE_ENE_ODSOTNOSTI")


uvoz <- read.csv2("Tabela1.csv", locale=locale(encoding="cp1250"))
