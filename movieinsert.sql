\c movie

INSERT INTO Movie values('001','Hella',120,'2012-12-10','4');
INSERT INTO Movie values('002','Ava',122,'2002-11-15','3');
INSERT INTO Movie values('003','Batman',100,'2013-04-23','2');
INSERT INTO Movie values('004','Run',98,'1982-03-17','1');
INSERT INTO Movie values('005','Time',128,'2007-07-28','4');
INSERT INTO Movie values('006','Dune',140,'2021-09-09','5');
INSERT INTO Movie values('007','Vertigo',210,'2011-11-11','4');
INSERT INTO Movie values('008','Big',138,'2010-08-10','5');
INSERT INTO Movie values('009','Up',120,'2015-11-09','3');

INSERT INTO TicketMaster values('12521','Ava');
INSERT INTO TicketMaster values('12564','Olivia');
INSERT INTO TicketMaster values('12123','Liam');
INSERT INTO TicketMaster values('12632','Elizabeth');
INSERT INTO TicketMaster values('12742','Noah');
INSERT INTO TicketMaster values('12835','Amy');
INSERT INTO TicketMaster values('12832','Oliver');
INSERT INTO TicketMaster values('12735','Glenn');
INSERT INTO TicketMaster values('12111','Elijah');

INSERT INTO Ticket values('12521','2010-10-23','12:30:00',1,350,'001','12111');
INSERT INTO Ticket values('12442','2021-10-10','12:30:00',4,700,'006','12832');
INSERT INTO Ticket values('12342','2016-09-12','13:00:00',2,350,'005','12742');
INSERT INTO Ticket values('14233','2017-02-03','17:30:00',5,400,'006','12742');
INSERT INTO Ticket values('13323','2019-10-21','20:30:00',1,350,'004','12832');
INSERT INTO Ticket values('13333','2018-07-22','09:30:00',1,300,'007','12521');
INSERT INTO Ticket values('13346','2010-10-23','12:30:00',1,350,'001','12123');
INSERT INTO Ticket values('12545','2010-10-23','12:30:00',1,350,'001','12123');
INSERT INTO Ticket values('12423','2010-10-23','12:30:00',1,350,'001','12123');
INSERT INTO Ticket values('12523','2010-10-23','12:30:00',1,350,'001','12123');

INSERT INTO Theatre values('011','One','450 Stone, Houston,TX');
INSERT INTO Theatre values('022','September','731 Fondren,Houston,TX');
INSERT INTO Theatre values('033','Bloom','638 voss,Houston,TX');
INSERT INTO Theatre values('044','No Drama','3321 Castle,Spring,TX');
INSERT INTO Theatre values('055','Magic','291 Berry, Bellaire,TX');
INSERT INTO Theatre values('066','Saturday','975 Fire Oak, Humble, TX');
INSERT INTO Theatre values('077','Star','5631 Rice,Houston,TX');
INSERT INTO Theatre values('088','Linc','980 Dallas, Houston,TX');



INSERT INTO SeatDetails values('D4','Premium','011','12523');
INSERT INTO SeatDetails values('G5','Regular','022','12423');
INSERT INTO SeatDetails values('F4','Regular','011','13346');
INSERT INTO SeatDetails values('B2','Luxury','044','13323');
INSERT INTO SeatDetails values('E6','Premium','055','13333');
INSERT INTO SeatDetails values('A9','Luxury','077','12342');
INSERT INTO SeatDetails values('F6','Regular','066','12521');
INSERT INTO SeatDetails values('B9','Luxury','066','12545');



INSERT INTO Customer values('111','Bell',21,'bella@gmail.com',9019273618);
INSERT INTO Customer values('222','Chiyenne',34,'chiyenne876@hotmail.com',9019273678);
INSERT INTO Customer values('333','Vayre',16,'reyAv_87@gmail.com',9018645792);
INSERT INTO Customer values('444','Andy',33,'Andyyyy@gmail.com',8547546931);
INSERT INTO Customer values('555','Jonah',46,'JJ_roxx2324@hotmail.com',8479996325);
INSERT INTO Customer values('666','Glenn',25,'Glenn__jesus@gmail.com',9663554771);
INSERT INTO Customer values('777','Jake',12,'Jake_bk99@gmail.com',6544441223);
INSERT INTO Customer values('888','Amy',10,'AmySan8989@hotmail.com',8745445663);


INSERT INTO Discount values('DGRWFG','DWGCode',10,'444');
INSERT INTO Discount values('PAJURB','bIGsHOW',50,'333');
INSERT INTO Discount values('BYSTEH','Welcome',45,'222');
INSERT INTO Discount values('PDRGSU','fest_10',25,'777');
INSERT INTO Discount values('VHSIRF','Diwali',25,'555');
INSERT INTO Discount values('OAIRBS','Welcome_2_movie',10,'444');
INSERT INTO Discount values('ISYRJD','QwertY',15,'111');
INSERT INTO Discount values('ISHEYD','GameWinner',5,'666');


INSERT INTO Screen_no values('01',180,'001','044');
INSERT INTO Screen_no values('45',200,'009','066');
INSERT INTO Screen_no values('09',45,'005','077');
INSERT INTO Screen_no values('49',600,'004','011');
INSERT INTO Screen_no values('23',450,'007','022');
INSERT INTO Screen_no values('76',100,'006','033');
INSERT INTO Screen_no values('88',800,'003','088');
INSERT INTO Screen_no values('04',350,'002','055');

INSERT INTO Ticket_info (t_id, c_name, m_name, cost) VALUES (1, 'Raghav', 'MIB', 400);
INSERT INTO Ticket_info (t_id, c_name, m_name, cost) VALUES (1, 'Pakku', 'Incredibles', 600);
INSERT INTO Ticket_info (t_id, c_name, m_name, cost) VALUES (1, 'Pruthvi', 'Frozen', 450);
INSERT INTO Ticket_info (t_id, c_name, m_name, cost) VALUES (1, 'Ramya', 'Tangled', 650);


INSERT INTO WorksFor values('011','12735');
INSERT INTO WorksFor values('055','12564');
INSERT INTO WorksFor values('077','12632');
INSERT INTO WorksFor values('033','12742');
INSERT INTO WorksFor values('011','12123');
INSERT INTO WorksFor values('044','12835');
INSERT INTO WorksFor values('022','12521');
INSERT INTO WorksFor values('088','12832');

INSERT INTO SoldTo values('12442','111');
INSERT INTO SoldTo values('12342','333');
INSERT INTO SoldTo values('13323','222');
INSERT INTO SoldTo values('13346','666');
INSERT INTO SoldTo values('12545','666');
INSERT INTO SoldTo values('12423','888');
INSERT INTO SoldTo values('14233','444');
INSERT INTO SoldTo values('13333','555');
