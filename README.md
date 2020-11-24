# Analiza podatkov s programom R, 2020/21

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2020/21

* [![Shiny](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/KlaraDoler/APPR-2020-21/master?urlpath=shiny/APPR-2020-21/projekt.Rmd) Shiny
* [![RStudio](http://mybinder.org/badge.svg)](http://mybinder.org/v2/gh/KlaraDoler/APPR-2020-21/master?urlpath=rstudio) RStudio

# Analiza bolniškega staleža v Sloveniji. 

Raziskala bom letni bolniški stalež v Sloveniji glede na starost, razloge odsotnosti in statistično regijo. Pogledala bom skupine bolezni, gospodarske dejavnosti ter razloge za bolniško odsotnost. Poskusila bom najti povezavo med gospodarsko dejavnostjo in odsotnostjo od dela (na primer, v gospodarskih dejavnostih, kjer pride do več poškodb, je več primerov odsotnosti), starostjo ter v katerih regijah in zakaj je več primerov bolniške odsotnosti.

Za glavni vir podatkov bom imela Nacionalni inštitut za javno zdravje NIJZ: https://podatki.nijz.si/pxweb/sl/NIJZ%20podatkovni%20portal/?px_language=sl&px_db=NIJZ+podatkovni+portal&rxid=654d1805-716b-4850-9b81-8ba313857a41, kjer so podatki v obliki HTML, CSV in XLSX.


TABELE:

Tabela 1: Kazalniki bolniškega staleža po starosti: 
\n Vrstice: Leto, Starost
\n Stoplci: Kazalniki

Tabela 2: Kazalniki po razlogih bolniškega staleža:
\n Vrstice: Leto, Razlogi
\n Stoplci: Kazalniki

Tabela 3: Kazalniki bolniškega staleža po statističnih regijah:
\n Vrstice: Leto, Regija
\n Stoplci: Kazalniki

Tabela 4: Izgubljeni koledarski dnevi po gospodarskih dejavnosti: 
\n Vrstice: Leto, Gospodarska dejavnost
\n Stoplci: Kazalniki




## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`.
Ko ga prevedemo, se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`.
Podatkovni viri so v mapi `podatki/`.
Zemljevidi v obliki SHP, ki jih program pobere,
se shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `rgdal` - za uvoz zemljevidov
* `rgeos` - za podporo zemljevidom
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `readr` - za branje podatkov
* `rvest` - za pobiranje spletnih strani
* `tidyr` - za preoblikovanje podatkov v obliko *tidy data*
* `dplyr` - za delo s podatki
* `gsubfn` - za delo z nizi (čiščenje podatkov)
* `ggplot2` - za izrisovanje grafov
* `mosaic` - za pretvorbo zemljevidov v obliko za risanje z `ggplot2`
* `maptools` - za delo z zemljevidi
* `tmap` - za izrisovanje zemljevidov
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)

## Binder

Zgornje [povezave](#analiza-podatkov-s-programom-r-202021)
omogočajo poganjanje projekta na spletu z orodjem [Binder](https://mybinder.org/).
V ta namen je bila pripravljena slika za [Docker](https://www.docker.com/),
ki vsebuje večino paketov, ki jih boste potrebovali za svoj projekt.

Če se izkaže, da katerega od paketov, ki ji potrebujete, ni v sliki,
lahko za sprotno namestitev poskrbite tako,
da jih v datoteki [`install.R`](install.R) namestite z ukazom `install.packages`.
Te datoteke (ali ukaza `install.packages`) **ne vključujte** v svoj program -
gre samo za navodilo za Binder, katere pakete naj namesti pred poganjanjem vašega projekta.

Tako nameščanje paketov se bo izvedlo pred vsakim poganjanjem v Binderju.
Če se izkaže, da je to preveč zamudno,
lahko pripravite [lastno sliko](https://github.com/jaanos/APPR-docker) z želenimi paketi.

Če želite v Binderju delati z git,
v datoteki `gitconfig` nastavite svoje ime in priimek ter e-poštni naslov
(odkomentirajte vzorec in zamenjajte s svojimi podatki) -
ob naslednjem zagonu bo mogoče delati commite.
Te podatke lahko nastavite tudi z `git config --global` v konzoli
(vendar bodo veljale le v trenutni seji).
