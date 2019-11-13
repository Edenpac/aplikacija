# aplikacija



Navodila za lokalni zagon:
- Bazo je potrebno uvoziti na lokalni strežnik. Sam sem uporabljal spletni strežnik XAMPP- phpmyadmin.
- Predvidevam, da imaste nameščene: NodeJS in @angular/cli. Prav tako nastavite pot do npm, med spremenljivkami okolja(Windows).

Odpremo XAMPP in zaženemo Apache in MYSQL
Potrebujemo 2 terminala:
V obeh se pomaknemo v mapo z aplikacijo (kjer so mapa src), .Nato vnesemo:
1.terminal: npm install --> da namestimo module v aplikacijo. To je potrebno le prvič. Modulov nisem dodal, ker bi bila sicer aplikacija večja za naložit na GitHub in prenesti.

1. terminal: ng serve
2. terminal: node ./src/server

V 1. zaženemo aplikacijo, v 2. pa server.

V 1. bo vrnilo napako v datoteki "node_modules/primeng/components/table/table.d.ts". Gre za napako importa modula. To datoteko odpremo v urejevalniku in spremenimo: 

"import { OnDestroy } from '@angular/core/src/metadata/lifecycle_hooks';" v: "import { OnDestroy } from '@angular/core';". Ter shranimo.
Nato zopet poženemo ukaz "ng serve".

Nato odpremo aplikacijo v brskalniku na URL naslovu: http://localhost:4200/ .

-------------------------------------------------------------------------------------------------------------------------------------------

Uporaba z MongoDB:


Za vnos podatkov v MongoDB, se v CMD-ju izvede ukaz:

mongoimport -d aplikacija -c osmodels pot\do\datoteke\database    <--brez končnice .json !!! To je datoteka z zbirko. Je zraven mape "Aplikacija", v arhivu.


Nato se izvede celoten postopek kot pri prejšnji verziji. S to izjemo, da ni potrebe po spletnem strežniku (XAMPP).
