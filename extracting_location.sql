/*
##############################################################################
#                 Extrahieren der Standorte des Lebensmittelzeinelhandels 
#				  Datenstand 2013 
#                 Florian Frank 
#                 30.06.2024
##############################################################################
*/

--- alle buchstaben in kleinbuchstaben umwandeln -> vorbereiten zum filtern nach Betrieber
update herold_2013_all.herold_all
set "firma" = lower("firma");


--- filtern nach relevanten Standorten in der Spalte "firma" und Spalte "http" nach betriebern von Supermärkten 
drop table if exists herold_2013_all.standorte13;
create table herold_2013_all.standorte13 as 
select * from herold_2013_all.herold_all
where 	( "firma" like '%spar%' or "firma" like '%billa%' or "firma" like '%zielpunkt%'
			or "firma" like '%eurospar%' or "firma" like '%nah&frisch%' or "firma" like '%adeg%' 
			or "firma" like '%penny%' or "firma" like '%interspar%' or "firma" like '%unimarkt%' 
			or "firma" like '%sutterlüty%' or "firma" like '%mpreis%' or "firma" like '%hofer%'
			or "firma" like '%lidl%'or "http" like '%lidl%' 
			or "http" like '%spar%' or "http" like '%billa%' or "http" like '%zielpunkt%'
			or "http" like '%eurospar%' or "http" like '%nah&frisch%' or "http" like '%adeg%' 
			or "http" like '%penny%' or "http" like '%interspar%' or "http" like '%unimarkt%' 
			or "http" like '%sutterlüty%' or "http" like '%mpreis%' or "http" like '%hofer%' 
		)
		and "oenace_bez" = 'Einzelhandel mit Waren verschiedener Art, Hauptrichtung Nahrungs und Genussmittel, Getränke und Tabakwaren';
	

alter table herold_2013_all.standorte13 add primary key (id);

create index spatial_index on herold_2013_all.standorte13 using gist (geom);




/*
##############################################################################
#                 Extrahieren der Standorte des Lebensmittelzeinelhandels 
#				  Datenstand 2023 
#                 Florian Frank 
#                 11.02.2024
##############################################################################
*/

--- alle buchstaben in kleinbuchstaben umwandeln -> vorbereiten zum filtern nach Betrieber
update diplom23.herold_2023_all
set "firma" = lower("firma");


--- filtern nach relevanten Standorten in der Spalte "firma" und Spalte "http" nach betriebern von Supermärkten 
drop table if exists diplom23.standorte23;
create table diplom23.standorte23 as 
select * from diplom23.herold_2023_all
where "firma" like '%spar%' or "firma" like '%billa%' or "firma" like '%zielpunkt%'
	or "firma" like '%eurospar%' or "firma" like '%nah&frisch%' or "firma" like '%adeg%' 
		or "firma" like '%penny%' or "firma" like '%interspar%' or "firma" like '%unimarkt%' 
		or "firma" like '%sutterlüty%' or "firma" like '%mpreis%' or "firma" like '%hofer%'
		or "firma" like '%lidl%'or "http" like '%lidl%' 
		or "http" like '%spar%' or "http" like '%billa%' or "http" like '%zielpunkt%'
		or "http" like '%eurospar%' or "http" like '%nah&frisch%' or "http" like '%adeg%' 
		or "http" like '%penny%' or "http" like '%interspar%' or "http" like '%unimarkt%' 
		or "http" like '%sutterlüty%' or "http" like '%mpreis%' or "http" like '%hofer%';
	

alter table diplom23.standorte23 add primary key (id);

create index spatial_index on diplom23.standorte23 using gist (geom);