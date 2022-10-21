USE BD_Grupo7_C2

--BEGIN TRANSACTION

--TIPO POSICION
INSERT INTO tipo_posicion(descripcion) VALUES('Portero')
INSERT INTO tipo_posicion(descripcion) VALUES('Lateral Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Lateral Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Defensa Central')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Defensivo')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Ofensivo')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Exterior Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Exterior Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Mediapunta')
INSERT INTO tipo_posicion(descripcion) VALUES('Delantero Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Delantero Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Delantero Centro')

--ESTADO_JUGADOR

INSERT INTO estado_jugador(descripcion) VALUES('Libre')
INSERT INTO estado_jugador(descripcion) VALUES('Contrato')
INSERT INTO estado_jugador(descripcion) VALUES('Prestamo')


--TEMPORADA
INSERT INTO temporada(descripcion) VALUES('Temporada 2010/2011')
INSERT INTO temporada(descripcion) VALUES('Temporada 2011/2012')
INSERT INTO temporada(descripcion) VALUES('Temporada 2012/2013')
INSERT INTO temporada(descripcion) VALUES('Temporada 2013/2014')
INSERT INTO temporada(descripcion) VALUES('Temporada 2014/2015')
INSERT INTO temporada(descripcion) VALUES('Temporada 2015/2016')
INSERT INTO temporada(descripcion) VALUES('Temporada 2016/2017')
INSERT INTO temporada(descripcion) VALUES('Temporada 2017/2018')
INSERT INTO temporada(descripcion) VALUES('Temporada 2018/2019')
INSERT INTO temporada(descripcion) VALUES('Temporada 2019/2020')
INSERT INTO temporada(descripcion) VALUES('Temporada 2020/2021')
INSERT INTO temporada(descripcion) VALUES('Temporada 2021/2022')

--LIGA
INSERT INTO liga(nombre, cant_fechas) VALUES('Primera A', 27)
INSERT INTO liga(nombre, cant_fechas) VALUES('Primera B', 38)
INSERT INTO liga(nombre, cant_fechas) VALUES('Primera C', 28)
INSERT INTO liga(nombre, cant_fechas) VALUES('Metropolitana B', 35)
INSERT INTO liga(nombre, cant_fechas) VALUES('Federal A', 30)
INSERT INTO liga(nombre, cant_fechas) VALUES('Federal B', 32)
INSERT INTO liga(nombre, cant_fechas) VALUES('Federal C', 36)

--REPRESENTANTE
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (23101101, 'Derril', 'Enric', '68 Maywood Street', '2062694541', 'denric0@over-blog.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (24101101, 'Darsey', 'Mesias', '56 Schurz Crossing', '8698347281', 'dmesias1@wikia.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (25101101, 'Amelia', 'Coleby', '00469 4th Terrace', '1616615183', 'acoleby2@people.com.cn')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (26101101, 'Bernice', 'Manuele', '5916 Eastwood Junction', '3803012918', 'bmanuele3@nba.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (27101101, 'Lyndell', 'Alan', '4 Victoria Avenue', '2044238747', 'lalan4@hhs.gov')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (28101101, 'Sianna', 'Siviour', '69 Green Ridge Place', '3235798347', 'ssiviour5@dmoz.org')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (29101101, 'Arabela', 'Rose', '449 Swallow Hill', '4392781454', 'arose6@freewebs.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (30101101, 'Mason', 'Wimes', '1 Di Loreto Way', '3136800857', 'mwimes7@sciencedirect.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (31101101, 'Danell', 'Blaxeland', '38877 Corben Court', '4557735497', 'dblaxeland8@newsvine.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (32101101, 'Virgie', 'Ashburner', '94144 Eagle Crest Point', '2145293201', 'vashburner9@statcounter.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (33101101, 'Georgie', 'Jenson', '24 Hermina Drive', '2813252017', 'gjensona@hibu.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (34101101, 'Sutherlan', 'Ginty', '6 Bluejay Circle', '2114812559', 'sgintyb@sitemeter.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (35101101, 'Anet', 'Pietasch', '4688 Sloan Drive', '4196243690', 'apietaschc@usnews.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (36101101, 'Megen', 'Abrahamsen', '40921 Northwestern Avenue', '9605343647', 'mabrahamsend@irs.gov')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (37101101, 'Mohammed', 'Twentyman', '513 Commercial Terrace', '5795513233', 'mtwentymane@yellowbook.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (38101101, 'Athena', 'Loughan', '27070 Rusk Way', '9533975880', 'aloughanf@umich.edu')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (39101101, 'Vivyanne', 'Petters', '73468 Warbler Crossing', '8222944932', 'vpettersg@si.edu')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (40101101, 'Filip', 'Grayshan', '73637 Thackeray Place', '3327079605', 'fgrayshanh@twitpic.com')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (41101101, 'Juli', 'Domney', '6018 Moland Road', '7082024438', 'jdomneyi@dailymail.co.uk')
insert into representante (dni, nombre, apellido, domicilio, telefono, correo) values (42101101, 'Clemmie', 'Giacomoni', '1 Manley Pass', '1499261269', 'cgiacomonij@usa.gov')


--RESPONSABLE
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (23100100, 'Jamesy', 'Pitherick', '7051463213', 'jpitherick0@furl.net')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (24100100, 'Lorettalorna', 'Viggars', '8741969511', 'lviggars1@weather.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (25100100, 'Leone', 'O''Hanley', '4279319385', 'lohanley2@engadget.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (26100100, 'Homer', 'Cortnay', '4392662548', 'hcortnay3@google.fr')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (27100100, 'Tammy', 'Plewes', '2247933877', 'tplewes4@ucoz.ru')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (28100100, 'Bertie', 'Hanselman', '8653716276', 'bhanselman5@youku.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (29100100, 'Hesther', 'Trevna', '5418674425', 'htrevna6@github.io')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (30100100, 'Leonhard', 'Le Provest', '7187725587', 'lleprovest7@plala.or.jp')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (31100100, 'Patrizio', 'Bernardini', '2391220135', 'pbernardini8@youtu.be')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (32100100, 'Lethia', 'Challinor', '1021745127', 'lchallinor9@huffingtonpost.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (33100100, 'Karlan', 'Matskiv', '1313275617', 'kmatskiva@reverbnation.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (34100100, 'Hunfredo', 'Ayto', '5378534746', 'haytob@topsy.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (35100100, 'Teodoor', 'Kilduff', '4167919435', 'tkilduffc@eepurl.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (36100100, 'Giavani', 'Eastwood', '3012062920', 'geastwoodd@biblegateway.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (37100100, 'Ebony', 'Haberjam', '1592173708', 'ehaberjame@macromedia.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (38100100, 'Sibilla', 'Fleming', '2818386911', 'sflemingf@domainmarket.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (39100100, 'Malory', 'Camolli', '6637052627', 'mcamollig@reverbnation.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (40100100, 'Fabio', 'Wilford', '5924788405', 'fwilfordh@tiny.cc')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (41100100, 'Lethia', 'Lidbetter', '9526453162', 'llidbetteri@arstechnica.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (42100100, 'Merrick', 'Tuddall', '7889807247', 'mtuddallj@e-recht24.de')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (13100100, 'Emmi', 'Atthowe', '9573831270', 'eatthowe0@clickbank.net')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (14100100, 'Evin', 'Linsay', '6449291890', 'elinsay1@list-manage.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (15100100, 'Nanni', 'Stuckley', '6752903642', 'nstuckley2@dell.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (16100100, 'Ximenes', 'Charity', '6442321386', 'xcharity3@cargocollective.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (17100100, 'Loreen', 'Borless', '5614281877', 'lborless4@washington.edu')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (18100100, 'Renelle', 'Mathiot', '4375203450', 'rmathiot5@ucsd.edu')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (19100100, 'Brook', 'Knevit', '9385940539', 'bknevit6@parallels.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (20100100, 'Lori', 'Ashfield', '9986509530', 'lashfield7@rambler.ru')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (21100100, 'Dynah', 'Becks', '4046467901', 'dbecks8@go.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (22100100, 'Manuel', 'Tansly', '4361760316', 'mtansly9@skyrock.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (23111100, 'Imogene', 'Van der Hoeven', '6635243607', 'ivanderhoevena@123-reg.co.uk')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (24111100, 'Brynne', 'Stuchburie', '5987724834', 'bstuchburieb@cbsnews.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (25111100, 'Jordan', 'Bilby', '8378881384', 'jbilbyc@merriam-webster.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (26111100, 'Rosalinda', 'Cheyenne', '3896770663', 'rcheyenned@smh.com.au')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (27111100, 'Archaimbaud', 'Dwerryhouse', '7359944957', 'adwerryhousee@netvibes.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (28111100, 'Callean', 'Shinn', '2559155180', 'cshinnf@live.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (29111100, 'Kitti', 'Woolmore', '5294749507', 'kwoolmoreg@gnu.org')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (30111100, 'Essie', 'Maccaig', '1485883607', 'emaccaigh@samsung.com')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (31111100, 'Iorgo', 'Newband', '5468779699', 'inewbandi@uiuc.edu')
insert into responsable (dni_responsable, nombre, apellido, telefono, correo) values (32111100, 'Ardenia', 'Scutchin', '3472928582', 'ascutchinj@hhs.gov')


--JUGADOR
--INSERT INTO jugador(dni,nombre,apellido,fecha_nac,nacionalidad,altura,pie_habil,valor_actual,cod_estado,cod_tipo_posicion) VALUES()
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (30289148, 'Jobye', 'Potteridge', '1983-08-28', 'China', 1.50, 'Derecho', 23159291, 1, 1);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (36504989, 'Pepillo', 'Losano', '1991-06-13', 'Philippines', 1.51, 'Derecho', 11505787, 2, 2);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (34652649, 'Abie', 'Kyteley', '1995-03-28', 'China', 1.52, 'Izquierdo', 3977104, 3, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (43666383, 'Sanders', 'Brailsford', '2003-08-08', 'China', 1.53, 'Izquierdo', 29352840, 1, 4);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (27144630, 'Base', 'Splaven', '1998-03-27', 'United Kingdom', 1.53, 'Derecho', 30169259, 2, 5);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (32768683, 'Corri', 'Everley', '1991-04-26', 'Indonesia', 1.54, 'Derecho', 18590010, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41054050, 'Dian', 'Critcher', '1994-01-05', 'China', 1.55, 'Derecho', 27673841, 1, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (33341894, 'Nathaniel', 'Waplinton', '1981-07-07', 'Azerbaijan', 1.56, 'Izquierdo', 39870797, 2, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (37558165, 'Sharl', 'Klosa', '2001-12-28', 'Indonesia', 1.56, 'Derecho', 8577436, 3, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41939957, 'Florri', 'Fencott', '1996-04-28', 'Indonesia', 1.57, 'Izquierdo', 6883329, 1, 10);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41255368, 'Raymund', 'Hanbridge', '1989-10-31', 'Liechtenstein', 1.58, 'Izquierdo', 34197340, 2, 11);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (44626040, 'Michele', 'Frude', '1987-07-20', 'Czech Republic', 1.59, 'Derecho', 19783970, 3, 12);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (39948830, 'Patrice', 'Webb-Bowen', '1984-06-11', 'Indonesia', 1.60, 'Derecho', 21085282, 1, 13);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41728897, 'Melissa', 'Cicculi', '1992-07-14', 'France', 1.61, 'Derecho', 21173127, 2, 14);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25770224, 'Eveline', 'Vallens', '1983-03-16', 'Russia', 1.62, 'Izquierdo', 5273636, 3, 1);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (28204930, 'Averell', 'Crumb', '1984-10-20', 'United Kingdom', 1.63, 'Derecho', 32077218, 1, 2);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (32139184, 'Jsandye', 'Louca', '1987-01-07', 'Czech Republic', 1.64, 'Derecho', 7689522, 2, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (30497590, 'Augustine', 'Kliment', '1999-07-08', 'Poland', 1.65, 'Derecho', 23026931, 3, 4);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (35318474, 'Guillaume', 'Bedder', '2003-03-30', 'Uganda', 1.66, 'Derecho', 12758575, 1, 5);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (31547003, 'Ermentrude', 'Crawcour', '2000-02-01', 'Russia', 1.67, 'Izquierdo', 2057117, 2, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (36567940, 'Kalie', 'Martelet', '1983-11-19', 'China', 1.68, 'Izquierdo', 34690441, 3, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (36926310, 'Diego', 'Crothers', '1991-07-11', 'Serbia', 1.69, 'Derecho', 27003244, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40028159, 'Tanney', 'Wearden', '2001-04-13', 'Philippines', 1.70, 'Derecho', 32151285, 2, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (42938724, 'Claudius', 'Kryszka', '2003-08-30', 'Ukraine', 1.71, 'Derecho', 25770435, 3, 10);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41874548, 'Price', 'Synnot', '2005-03-05', 'France', 1.72, 'Derecho', 39019930, 1, 11);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (37418564, 'Mozelle', 'Schnitter', '2005-07-14', 'Russia', 1.73, 'Izquierdo', 32184539, 2, 12);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40238751, 'Anna', 'Van den Velde', '1983-02-18', 'Japan', 1.74, 'Derecho', 33830655, 3, 13);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (43002011, 'Kippy', 'Gillbanks', '2006-10-18', 'Ukraine', 1.75, 'Izquierdo', 2848965, 1, 14);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41920192, 'Minnnie', 'Stickells', '1981-11-07', 'Philippines', 1.76, 'Izquierdo', 22169023, 2, 1);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (38761082, 'Cash', 'Longhurst', '2006-05-14', 'Poland', 1.77, 'Derecho', 7216707, 3, 2);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (43418401, 'Hatti', 'Shilito', '1985-09-15', 'Macao', 1.78, 'Izquierdo', 13503036, 1, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (29208212, 'Zorah', 'Oleshunin', '1987-01-16', 'China', 1.79, 'Izquierdo', 27348231, 2, 4);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (44671793, 'Rivy', 'Coorington', '1996-02-14', 'China', 1.80, 'Derecho', 38075453, 3, 5);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (39935362, 'Pegeen', 'Goldring', '1991-02-17', 'Nicaragua', 1.81, 'Izquierdo', 5359781, 1, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (33010125, 'Christoforo', 'Deares', '1982-06-27', 'Cuba', 1.82, 'Derecho', 38385657, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40250296, 'Marcellina', 'Redan', '1994-06-29', 'China', 1.83, 'Izquierdo', 41478591, 3, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (28364730, 'Westbrooke', 'Fyndon', '1991-09-28', 'China', 1.84, 'Izquierdo', 46316380, 1, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (39067294, 'Kylie', 'Wearn', '2006-05-03', 'Indonesia', 1.85, 'Izquierdo', 12467772, 2, 10);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (43512472, 'Leoine', 'Doubrava', '1986-10-02', 'Brazil', 1.86, 'Derecho', 22454891, 3, 11);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (38391162, 'Donica', 'Battrick', '1992-03-16', 'Mali', 1.87, 'Derecho', 19274828, 1, 12);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (27304673, 'Craggie', 'Grishinov', '1987-05-27', 'Indonesia', 1.88, 'Izquierdo', 17380953, 2, 13);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (27532840, 'Rafi', 'Paxeford', '1996-10-26', 'Russia', 1.89, 'Derecho', 3348285, 3, 14);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (26310391, 'Tina', 'Brookson', '2002-01-13', 'Armenia', 1.90, 'Izquierdo', 11141168, 1, 1);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (32827215, 'Ceciley', 'Burrel', '1990-12-30', 'Philippines', 1.91, 'Derecho', 42576838, 2, 2);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25682704, 'Olvan', 'Addams', '2002-08-12', 'Ghana', 1.92, 'Izquierdo', 40669014, 3, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (31828297, 'Therine', 'Roony', '1998-03-26', 'Brazil', 1.93, 'Izquierdo', 11783348, 1, 4);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (29145600, 'Tish', 'Hamlen', '2006-08-27', 'Russia', 1.94, 'Izquierdo', 18445817, 2, 5);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25259396, 'Cad', 'Huller', '1992-12-24', 'Libya', 1.95, 'Izquierdo', 1076421, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (36480530, 'Orel', 'Balkwill', '1991-01-24', 'Ghana', 1.96, 'Derecho', 38733431, 1, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (38790381, 'Tamarra', 'MacBey', '2004-11-02', 'China', 1.97, 'Derecho', 35939611, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (28675075, 'Tamas', 'Archanbault', '1984-05-16', 'Slovenia', 1.98, 'Izquierdo', 22747659, 3, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (31660687, 'Peder', 'Malyan', '1985-05-12', 'Poland', 1.99, 'Izquierdo', 7794925, 1, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40313814, 'Udall', 'Topliss', '1987-11-13', 'Mali', 2.01, 'Derecho', 34914279, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25598657, 'Corina', 'Nary', '2006-02-15', 'Philippines', 2.02, 'Derecho', 23466612, 3, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (30044301, 'Bernadene', 'Sleep', '1994-04-08', 'Philippines', 2.03, 'Derecho', 28763854, 1, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25445513, 'Willis', 'Houlahan', '1990-01-20', 'Philippines', 2.04, 'Derecho', 48961265, 3, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (42344349, 'Hayward', 'Habble', '1981-06-08', 'Philippines', 2.05, 'Izquierdo', 45736179, 2, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (35493923, 'Anne-corinne', 'Thor', '1998-12-29', 'Iceland', 2.06, 'Derecho', 48560595, 3, 3);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (30421457, 'Moina', 'Lodder', '1993-08-27', 'Vietnam', 2.07, 'Izquierdo', 26192093, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (27484101, 'Onofredo', 'Sives', '1990-04-22', 'France', 2.08, 'Derecho', 2299239, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40291844, 'Trix', 'Oxborough', '1982-11-22', 'Indonesia', 2.09, 'Derecho', 7166634, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (32323738, 'Kristin', 'Volk', '1986-05-30', 'Portugal', 2.10, 'Izquierdo', 23660542, 1, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (28736715, 'Wallache', 'Willan', '1997-04-29', 'China', 1.60, 'Izquierdo', 47045582, 1, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41097468, 'Jermayne', 'Foxton', '2000-05-22', 'Spain', 1.61, 'Derecho', 37062512, 1, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (39156662, 'Nadia', 'Pasmore', '1996-11-25', 'Ukraine', 1.70, 'Derecho', 17018683, 2, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (30266937, 'Abbe', 'Seakes', '1998-06-01', 'China', 1.71, 'Derecho', 46903625, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (44968121, 'Deerdre', 'MacRannell', '1984-10-23', 'Slovenia', 1.72, 'Derecho', 32087360, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (43301358, 'Brigit', 'Quincey', '2006-10-11', 'North Korea', 1.72, 'Derecho', 30133304, 3, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (33069761, 'Ewan', 'Waltering', '2006-08-16', 'France', 1.73, 'Izquierdo', 17112012, 2, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (37750757, 'Carol', 'Arguile', '1987-05-01', 'Indonesia', 1.74, 'Derecho', 14638796, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (33822403, 'Erin', 'Asson', '1999-03-22', 'Russia', 1.77, 'Izquierdo', 6783776, 2, 1);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (33694553, 'Nola', 'Laverty', '2005-01-30', 'Croatia', 1.78, 'Izquierdo', 39876806, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (27596825, 'Any', 'Fillis', '1981-01-09', 'China', 1.78, 'Derecho', 39832835, 3, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (33922618, 'Chicky', 'Nise', '1997-05-04', 'Afghanistan', 1.77, 'Derecho', 34221588, 1, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (28452915, 'Ginnifer', 'Iredale', '2001-06-26', 'France', 1.75, 'Derecho', 13471712, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (31564289, 'Raymond', 'Whiskin', '2005-06-17', 'United States', 1.75, 'Derecho', 12687823, 3, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (32822656, 'Onfre', 'Dullingham', '2005-08-16', 'Indonesia', 1.79, 'Izquierdo', 13751802, 3, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (43352923, 'Budd', 'Carty', '1990-11-19', 'Iran', 1.55, 'Derecho', 6346304, 3, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40634278, 'Berti', 'Pinkney', '1994-09-23', 'Serbia', 1.66, 'Derecho', 11805885, 2, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (38358605, 'Monroe', 'Duer', '1994-06-14', 'Russia', 1.69, 'Izquierdo', 6255337, 2, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (44366184, 'Wyndham', 'Bart', '1998-04-07', 'Uganda', 1.64, 'Derecho', 33168555, 2, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41898705, 'Benedikta', 'Bruff', '1993-12-20', 'Denmark', 1.52, 'Izquierdo', 15396518, 2, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40411903, 'Burton', 'Lucian', '1995-09-06', 'Mexico', 1.67, 'Derecho', 36906452, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (34585875, 'Mead', 'Mathet', '1989-09-27', 'Canada', 1.78, 'Izquierdo', 37136004, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (37517734, 'Christin', 'Rowlett', '2003-06-15', 'Russia', 1.88, 'Derecho', 25273356, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25793503, 'Osborne', 'Crimmins', '1994-09-02', 'China', 1.80, 'Izquierdo', 40478288, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (39587159, 'Aimil', 'Goodsir', '1982-12-22', 'Russia', 1.83, 'Izquierdo', 2246332, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (30062560, 'Land', 'Gunson', '1988-09-04', 'Czech Republic', 1.81, 'Derecho', 3586865, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (42766940, 'Bobbie', 'Anthill', '2004-09-05', 'Honduras', 1.58, 'Derecho', 37107914, 2, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (41531080, 'Yoshi', 'Esslemont', '1985-10-12', 'Czech Republic', 1.77, 'Derecho', 30797149, 3, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (26811177, 'Amalia', 'Beinke', '1984-10-15', 'Zambia', 1.63, 'Derecho', 19479399, 3, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25138138, 'Pren', 'Colton', '1989-08-30', 'China', 1.50, 'Derecho', 7182020, 3, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (37282282, 'Jorgan', 'Sharvill', '2004-12-15', 'Brazil', 1.78, 'Derecho', 35509090, 3, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (25482945, 'Jada', 'Sheward', '1984-12-31', 'Latvia', 1.72, 'Izquierdo', 5897488, 3, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (38332747, 'Cyb', 'Bassham', '1980-11-17', 'Ukraine', 1.70, 'Izquierdo', 36817060, 1, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (40148629, 'Jermaine', 'Adriaan', '1986-01-13', 'Indonesia', 1.74, 'Derecho', 21105662, 1, 6);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (37596087, 'Sax', 'Hearnden', '1994-02-24', 'China', 1.76, 'Derecho', 11943413, 1, 7);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (31311196, 'Catherin', 'Dutch', '1981-07-12', 'Sweden', 1.85, 'Derecho', 45880872, 1, 8);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (38466413, 'Trudey', 'Castaignet', '2005-05-09', 'Russia', 1.89, 'Izquierdo', 11672988, 1, 9);
insert into jugador (dni, nombre, apellido, fecha_nac, nacionalidad, altura, pie_habil, valor_actual, cod_estado, cod_tipo_posicion) values (31062891, 'Fiorenze', 'Dunton', '1997-09-26', 'Greece', 1.90, 'Derecho', 11384875, 1, 10);


--JUGADOR_REPRESENTANTE
--INSERT INTO jugador_representante(dni_representante,nro_jugador) VALUES()
insert into jugador_representante (dni_representante,nro_jugador) values (23101101,1)
insert into jugador_representante (dni_representante,nro_jugador) values (24101101,2)
insert into jugador_representante (dni_representante,nro_jugador) values (25101101,3)
insert into jugador_representante (dni_representante,nro_jugador) values (26101101,4)
insert into jugador_representante (dni_representante,nro_jugador) values (27101101,5)
insert into jugador_representante (dni_representante,nro_jugador) values (28101101,6)
insert into jugador_representante (dni_representante,nro_jugador) values (29101101,7)
insert into jugador_representante (dni_representante,nro_jugador) values (30101101,8)
insert into jugador_representante (dni_representante,nro_jugador) values (31101101,9)
insert into jugador_representante (dni_representante,nro_jugador) values (32101101,10)
insert into jugador_representante (dni_representante,nro_jugador) values (33101101,11)
insert into jugador_representante (dni_representante,nro_jugador) values (34101101,12)
insert into jugador_representante (dni_representante,nro_jugador) values (35101101,13)
insert into jugador_representante (dni_representante,nro_jugador) values (36101101,14)
insert into jugador_representante (dni_representante,nro_jugador) values (37101101,15)
insert into jugador_representante (dni_representante,nro_jugador) values (38101101,16)
insert into jugador_representante (dni_representante,nro_jugador) values (39101101,17)
insert into jugador_representante (dni_representante,nro_jugador) values (40101101,18)
insert into jugador_representante (dni_representante,nro_jugador) values (41101101,19)
insert into jugador_representante (dni_representante,nro_jugador) values (42101101,20)
insert into jugador_representante (dni_representante,nro_jugador) values (23101101,21)
insert into jugador_representante (dni_representante,nro_jugador) values (24101101,22)
insert into jugador_representante (dni_representante,nro_jugador) values (25101101,23)
insert into jugador_representante (dni_representante,nro_jugador) values (26101101,24)
insert into jugador_representante (dni_representante,nro_jugador) values (27101101,25)
insert into jugador_representante (dni_representante,nro_jugador) values (28101101,26)
insert into jugador_representante (dni_representante,nro_jugador) values (29101101,27)
insert into jugador_representante (dni_representante,nro_jugador) values (30101101,28)
insert into jugador_representante (dni_representante,nro_jugador) values (31101101,29)
insert into jugador_representante (dni_representante,nro_jugador) values (32101101,30)
insert into jugador_representante (dni_representante,nro_jugador) values (33101101,31)
insert into jugador_representante (dni_representante,nro_jugador) values (34101101,32)
insert into jugador_representante (dni_representante,nro_jugador) values (35101101,33)
insert into jugador_representante (dni_representante,nro_jugador) values (36101101,34)
insert into jugador_representante (dni_representante,nro_jugador) values (37101101,35)
insert into jugador_representante (dni_representante,nro_jugador) values (38101101,36)
insert into jugador_representante (dni_representante,nro_jugador) values (39101101,37)
insert into jugador_representante (dni_representante,nro_jugador) values (40101101,38)
insert into jugador_representante (dni_representante,nro_jugador) values (41101101,39)
insert into jugador_representante (dni_representante,nro_jugador) values (42101101,40)
insert into jugador_representante (dni_representante,nro_jugador) values (23101101,41)
insert into jugador_representante (dni_representante,nro_jugador) values (24101101,42)
insert into jugador_representante (dni_representante,nro_jugador) values (25101101,43)
insert into jugador_representante (dni_representante,nro_jugador) values (26101101,44)
insert into jugador_representante (dni_representante,nro_jugador) values (27101101,45)
insert into jugador_representante (dni_representante,nro_jugador) values (28101101,46)
insert into jugador_representante (dni_representante,nro_jugador) values (29101101,47)
insert into jugador_representante (dni_representante,nro_jugador) values (30101101,48)
insert into jugador_representante (dni_representante,nro_jugador) values (31101101,49)
insert into jugador_representante (dni_representante,nro_jugador) values (32101101,50)
insert into jugador_representante (dni_representante,nro_jugador) values (33101101,51)
insert into jugador_representante (dni_representante,nro_jugador) values (34101101,52)
insert into jugador_representante (dni_representante,nro_jugador) values (35101101,53)
insert into jugador_representante (dni_representante,nro_jugador) values (36101101,54)
insert into jugador_representante (dni_representante,nro_jugador) values (37101101,55)
insert into jugador_representante (dni_representante,nro_jugador) values (38101101,56)
insert into jugador_representante (dni_representante,nro_jugador) values (39101101,57)
insert into jugador_representante (dni_representante,nro_jugador) values (40101101,58)
insert into jugador_representante (dni_representante,nro_jugador) values (41101101,59)
insert into jugador_representante (dni_representante,nro_jugador) values (42101101,60)
insert into jugador_representante (dni_representante,nro_jugador) values (23101101,61)
insert into jugador_representante (dni_representante,nro_jugador) values (24101101,62)
insert into jugador_representante (dni_representante,nro_jugador) values (25101101,63)
insert into jugador_representante (dni_representante,nro_jugador) values (26101101,64)
insert into jugador_representante (dni_representante,nro_jugador) values (27101101,65)
insert into jugador_representante (dni_representante,nro_jugador) values (28101101,66)
insert into jugador_representante (dni_representante,nro_jugador) values (29101101,67)
insert into jugador_representante (dni_representante,nro_jugador) values (30101101,68)
insert into jugador_representante (dni_representante,nro_jugador) values (31101101,69)
insert into jugador_representante (dni_representante,nro_jugador) values (32101101,70)
insert into jugador_representante (dni_representante,nro_jugador) values (33101101,71)
insert into jugador_representante (dni_representante,nro_jugador) values (34101101,72)
insert into jugador_representante (dni_representante,nro_jugador) values (35101101,73)
insert into jugador_representante (dni_representante,nro_jugador) values (36101101,74)
insert into jugador_representante (dni_representante,nro_jugador) values (37101101,75)
insert into jugador_representante (dni_representante,nro_jugador) values (38101101,76)
insert into jugador_representante (dni_representante,nro_jugador) values (39101101,77)
insert into jugador_representante (dni_representante,nro_jugador) values (40101101,78)
insert into jugador_representante (dni_representante,nro_jugador) values (41101101,79)
insert into jugador_representante (dni_representante,nro_jugador) values (42101101,70)
insert into jugador_representante (dni_representante,nro_jugador) values (23101101,71)
insert into jugador_representante (dni_representante,nro_jugador) values (24101101,72)
insert into jugador_representante (dni_representante,nro_jugador) values (25101101,73)
insert into jugador_representante (dni_representante,nro_jugador) values (26101101,74)
insert into jugador_representante (dni_representante,nro_jugador) values (27101101,75)
insert into jugador_representante (dni_representante,nro_jugador) values (28101101,76)
insert into jugador_representante (dni_representante,nro_jugador) values (29101101,77)
insert into jugador_representante (dni_representante,nro_jugador) values (30101101,78)
insert into jugador_representante (dni_representante,nro_jugador) values (31101101,79)
insert into jugador_representante (dni_representante,nro_jugador) values (32101101,80)
insert into jugador_representante (dni_representante,nro_jugador) values (33101101,81)
insert into jugador_representante (dni_representante,nro_jugador) values (34101101,82)
insert into jugador_representante (dni_representante,nro_jugador) values (35101101,83)
insert into jugador_representante (dni_representante,nro_jugador) values (36101101,84)
insert into jugador_representante (dni_representante,nro_jugador) values (37101101,85)
insert into jugador_representante (dni_representante,nro_jugador) values (38101101,86)
insert into jugador_representante (dni_representante,nro_jugador) values (39101101,87)
insert into jugador_representante (dni_representante,nro_jugador) values (40101101,88)
insert into jugador_representante (dni_representante,nro_jugador) values (41101101,89)
insert into jugador_representante (dni_representante,nro_jugador) values (42101101,90)
insert into jugador_representante (dni_representante,nro_jugador) values (23101101,91)
insert into jugador_representante (dni_representante,nro_jugador) values (24101101,92)
insert into jugador_representante (dni_representante,nro_jugador) values (25101101,93)
insert into jugador_representante (dni_representante,nro_jugador) values (26101101,94)
insert into jugador_representante (dni_representante,nro_jugador) values (27101101,95)
insert into jugador_representante (dni_representante,nro_jugador) values (28101101,96)
insert into jugador_representante (dni_representante,nro_jugador) values (29101101,97)
insert into jugador_representante (dni_representante,nro_jugador) values (30101101,98)
insert into jugador_representante (dni_representante,nro_jugador) values (31101101,99)
insert into jugador_representante (dni_representante,nro_jugador) values (32101101,100)


--CLUB
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Atlético Tucumán',1905,'5565 Bay Terrace',1,13100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Banfield',1906,'223 Maywood Road',1,14100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Boca Juniors',1907,'1639 Farragut Way',1,15100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Colón',1908,'15 Hanson Junction',1,16100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Estudiantes de La Plata',1909,'826 Everett Court',1,17100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Gimnasia de La Plata',1910,'97750 Acker Terrace',1,18100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Huracán',1911,'7 Ridgeview Center',1,19100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Independiente',1912,'90 Pankratz Lane',1,20100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Lanús',1913,'3070 Waywood Center',1,21100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Newells Old Boys',1914,'2594 Cardinal Pass',1,22100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Racing Club',1915,'5 Hoepker Street',1,23100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('River Plate',1916,'85 Gerald Center',1,24100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Rosario Central',1917,'04821 Village Green Terrace',1,25100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('San Lorenzo',1918,'6 Talisman Lane',1,26100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Flandria',1919,'2 Huxley Plaza',2,27100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Gimnasia de Jujuy',1920,'97957 Summit Street',2,28100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Gimnasia de Mendoza',1921,'511 Main Point',2,29100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Güemes',1922,'1802 Nelson Point',2,30100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Guillermo Brown',1923,'410 Graedel Circle',2,31100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Independiente Rivadavia',1924,'618 Esch Place',2,32100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Instituto de Córdoba',1925,'0153 Lillian Street',2,33100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Mitre',1926,'3780 Fuller Lane',2,34100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Nueva Chicago',1927,'9790 New Castle Street',2,35100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Quilmes',1928,'3168 Bayside Crossing',2,36100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Sacachispas',1929,'52 Oakridge Way',2,37100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('San Martín de San Juan',1930,'8 Havey Street',2,38100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('San Telmo',1931,'79971 Wayridge Junction',2,39100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Temperley',1932,'79554 Stang Street',2,40100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Tristán Suárez',1933,'2376 Elka Way',2,41100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Villa Dálmine',1934,'47 Gateway Alley',2,42100100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Acassuso',1935,'3 Upham Road',3,23111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Argentino de Quilmes',1936,'603 Merchant Drive',3,24111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('CADU',1937,'952 Donald Crossing',3,25111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Cañuelas',1938,'71807 Beilfuss Pass',3,26111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Colegiales',1939,'685 Melvin Parkway',3,27111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Comunicaciones',1940,'581 Maple Road',3,28111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Talleres de Escalada',1941,'40 Mcbride Avenue',3,29111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('UAI Urquiza',1942,'945 Debs Circle',3,30111100)
insert into club (nombre, año_fund, direccion,cod_liga, dni_responsable) values ('Villa San Carlos',1943,'4424 Sutteridge Road',3,31111100)


--CLUB_JUGADOR
--INSERT INTO club_jugador(nro_club,nro_jugador,fecha_hasta) VALUES()
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,1)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,2)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,3)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,4)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,5)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,6)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,7)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,8)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(1,10)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(2,12)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(2,13)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(2,14)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(3,15)
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(3,16)

--INF_TRANSF_CABECERA
--INSERT INTO inf_transf_cabecera(nro_temporada) VALUES()
INSERT INTO inf_transf_cabecera(nro_temporada) VALUES(1)
INSERT INTO inf_transf_cabecera(nro_temporada) VALUES(2)
INSERT INTO inf_transf_cabecera(nro_temporada) VALUES(3)

--INF_TRANSF_DETALLE
--INSERT INTO inf_transf_detalle(nro_informe,nro_informe_detalle, nro_club,nro_jugador,fecha_transf,valor_transf) VALUES()
INSERT INTO inf_transf_detalle(nro_informe,nro_club,nro_jugador,valor_transf) VALUES(1,1,1,1200500)

--COMMIT TRANSACTION
--ROLLBACK TRANSACTION
