# aplikacija



Navodila za lokalni zagon:
- Bazo je potrebno uvoziti na lokalni strežnik. Sam sem uporabljal spletni strežnik XAMPP- phpmyadmin.
- Predvidevam, da imaste nameščene: NodeJS in @angular/cli. Prav tako nastavite pot do npm, med spremenljivkami okolja(Windows).

Odpremo XAMPP in zaženemo Apache in MYSQL
Potrebujemo 2 terminala:
V obeh se pomaknemo v mapo z aplikacijo (kjer so mapa src), .Nato vnesemo:
1.terminal: npm install --> da namestimo module v aplikacijo. To je potrebno le prvič, ker bi bila drugače aplikacija bolj velika.
1. terminal: ng serve
2. terminal: node ./src/server

V 1. zaženemo aplikacijo, v 2. pa server.

V 1. bo vrnilo napako v datoteki "node_modules/primeng/components/table/table.d.ts". Gre za napako importa modula. To datoteko odpremo v urejevalniku in spremenimo: 

"import { OnDestroy } from '@angular/core/src/metadata/lifecycle_hooks';" v: "import { OnDestroy } from '@angular/core';". Ter shranimo.
Nato zopet poženemo ukaz "ng serve".

Nato odpremo aplikacijo v brskalniku na URL naslovu: http://localhost:4200/ .

-------------------------------------------------------------------------------------------------------------------------------------------

Uporaba z MongoDB:

/*
Za grafični vmesnik sem uporabil MongoDB Compass Community. 
Najrej je v njem potrebno ustvariti podatkovno bazo "aplikacija" in Collection "osmodels". Nato se pomaknemo v "osmodels", kjer ni nobenega vnosa.
Seznam oseb iz "database.json" se vnese tako, da v menuju, kjer imamo zbirko, kliknemo "Collection-->Import Data". Tip datoteke se izbere JSON. Nato pobrskamo po datoteki. Datoteke .json ni videti. Zato je potrebno v mapi, kjer se datoteka nahaja, v polje "File name " vpisati ime datoteke (Ime bi se moralo pokazati v spustnem seznamu).

*/

Za vnos podatkov v MongoDB, se v CMD-ju izvede ukaz:

mongoimport -d aplikacija -c osmodels pot\do\datoteke\database    <--brez končnice .json !!!


Nato se izvede celoten postopek kot pri prejšnji verziji. S to izjemo, da ni potrebe po spletnem strežniku (XAMPP).
