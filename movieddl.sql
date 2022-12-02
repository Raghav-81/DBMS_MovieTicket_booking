drop database movie;
CREATE database movie;

\c movie

CREATE Table Movie
(
  m_id VARCHAR(20) NOT NULL,
  m_name VARCHAR(20) NOT NULL,
  Duration INT,--in minutes
  Release_date DATE,
  Rating INT,
  PRIMARY key(m_id)
);

CREATE Table TicketMaster
(
  tm_id VARCHAR(20) NOT NULL,
  tm_name CHAR(20) NOT NULL,
  PRIMARY KEY(tm_id)
);


CREATE TABLE Ticket
(
  ti_id VARCHAR(20) NOT NULL UNIQUE,
  show_date DATE NOT NULL,
  show_time Time NOT NULL,
  screen_no INT NOT NULL,--Assuming all are numeric
  price INT,--in rupees
  m_id VARCHAR(20) NOT NULL,
  tm_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (ti_id),
  FOREIGN KEY (m_id) REFERENCES Movie(m_id),
  FOREIGN KEY (tm_id) REFERENCES TicketMaster(tm_id)
);

Create Table Theatre
(
  t_id VARCHAR(20) NOT NULL,
  t_name VARCHAR(20) NOT NULL,
  t_location VARCHAR(40),
  PRIMARY KEY (t_id)
  --FOREIGN KEY (ti_id) REFERENCES Ticket(ti_id)
);

Create Table SeatDetails
(
  seat_id VARCHAR(20) NOT NULL,
  seat_type VARCHAR(20),
  t_id VARCHAR(20) NOT NULL,
  ti_id VARCHAR(20) NOT NULL UNIQUE,
  PRIMARY KEY (seat_id),
  FOREIGN KEY (t_id) REFERENCES Theatre(t_id),
  FOREIGN KEY (ti_id) REFERENCES Ticket(ti_id)
);

CREATE Table Customer
(
  c_id VARCHAR(20) NOT NULL,
  c_name VARCHAR(20) NOT NULL,
  age INT,
  mail VARCHAR(40) ,
  phone BIGINT NOT NULL,
  PRIMARY KEY(c_id)
);

CREATE Table Discount
(
  d_id VARCHAR(20) NOT NULL UNIQUE,
  d_name VARCHAR(20),
  d_value INT NOT NULL,--Percentage
  c_id VARCHAR(20) NOT NULL,
  PRIMARY KEY(d_id, c_id),
  FOREIGN KEY (c_id) REFERENCES Customer(c_id)
);

CREATE Table Ticket_info
(
  t_id SERIAL PRIMARY KEY,
  c_name VARCHAR(20) NOT NULL,
  m_name VARCHAR(50) NOT NULL,
  cost INT NOT NULL
);

CREATE Table Screen_no
(
  Screen_id VARCHAR(20) NOT NULL,
  No_of_seats INT NOT NULL,
  m_id VARCHAR(20) NOT NULL,
  t_id VARCHAR(20) NOT NULL,
  PRIMARY KEY(Screen_id),
  FOREIGN KEY (m_id) REFERENCES Movie(m_id),
  FOREIGN KEY (t_id) REFERENCES Theatre(t_id)
);

CREATE table WorksFor
(
  t_id VARCHAR(20) NOT NULL,
  tm_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (t_id, tm_id),
  FOREIGN KEY (t_id) REFERENCES Theatre(t_id),
  FOREIGN KEY (tm_id) REFERENCES TicketMaster(tm_id)  
);

CREATE table SoldTo
(
  ti_id VARCHAR(20) NOT NULL,
  c_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (ti_id, c_id),
  FOREIGN KEY (ti_id) REFERENCES Ticket(ti_id),
  FOREIGN KEY (c_id) REFERENCES Customer(c_id)
  
);


