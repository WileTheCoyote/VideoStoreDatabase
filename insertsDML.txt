INSERT INTO Customers VALUES
          (100001, 'Ryan', 'Smith', '5103 S. Baxter Cir.', 'Denver', 'CO', 80121, '3034332214', '10823828238382', 2, 2, 2, 2),
          (100002, 'Nikola', 'Tesla', '110 N. Cerressa Way.', 'CO Springs', 'CO', 80543, '7902339514', '12948827767391', 1, 0, 0, 0),
          (100003, 'Ryan', 'Giggs', '873 Green Grove Ave.', 'Denver','CO', 80222, '3038782914', '18929999232113', 10, 1, 4, 4),
          (100004, 'Nikola', 'Tesla', '19 W. Brexit Cir.', 'Lakewood', 'CO', 80443, '3039032433', '13332991199779', 3, 0, 3, 3),
          (100005, 'Jonee', 'McGee', '1223 S. Hampton Dr.', 'Denver', 'CO', 80113, '3034332214', '10022344847321', 19, 1, 3, 12);

INSERT INTO MovieLibrary VALUES
          (123399, 'The Big Short', 'Drama', '4', '02:00:24', '2015-05-02'),
          (197438, 'The Big Lebowski', 'Comedy', '4', '01:57:24', '1998-11-02'),
          (144896, 'Rush Hour', 'Comedy', '4', '01:45:14', '1999-05-12'),
          (144897, 'Rush Hour 2', 'Comedy', '3', '01:52:53', '2001-08-25'),
          (166369, 'Oceans Eleven', 'Drama', '4', '01:56:50', '2001-09-18');

INSERT INTO MediaInventory VALUES
          (123399, 1, 1, 1, 10023932),
          (123399, 1, 0, 0, 10389991),
          (197438, 1, 1, 1, 10023932),
          (144896, 1, 0, 1, 10011993),
          (144896, 4, 1, 1, 10977325);

INSERT INTO Actors VALUES
          (2343679, 'Cristian', 'Bale', 42, 'England'),
          (4443457, 'Brad', 'Pitt', 52, 'USA'),
          (3567279, 'Chris', 'Rock', 51, 'USA'),
          (8124357, 'Jeff', 'Bridges', 66, 'USA'),
          (3444554, 'Steve', 'Carrell', 54, 'USA');

INSERT INTO Distributors VALUES
          (1, 'Movie Outlet', '299 S. Brisset Ave.', 'Sherby', 'WI', 40123, '4532338864'),
          (2, 'Resource Media', '132 Graham St.', 'Los Angeles', 'CA', 29226, '6557739899'),
          (3, 'DVD and Video Plus', '8388 Brown Rd.', 'Delph', 'TX', 74463, '7573938891'),
          (4, 'American Movie', '5 W. Franklin Crt.', 'Orlando', 'FL', 30111, '3997795864'),
          (5, 'All Source', '985 W. Straw Cir.', 'Durango', 'CO', 89932, '3348831121');

INSERT INTO MovieCatalog VALUES
          (9834239, 1, 1, 'Crash', 4.05),
          (2323423, 1, 1, 'Big', 3.35),
          (7664522, 3, 0, 'Predator', 4.25),
          (8886432, 4, 0, 'Sully', 9.52),
          (2476843, 5, 1, 'Limitless', 6.19);

INSERT INTO MovieCredits VALUES
          (123399, 2343679, 'Actor', 'Lead', 1),
          (123399, 4443457, 'Actor', 'Supporting', 0),
          (123399, 3444554, 'Actor', 'Lead', 0),
          (197438, 8124357, 'Actor', 'Lead', 1),
          (144896, 3567279, 'Actor', 'Lead', 0);

INSERT INTO Rentals VALUES
          (3254553, 100004, 123399, 1, 1, '2016-01-02', '2016-01-07', '2016-01-06', 0, 5.55, 0.00, 0),
          (3254554, 100001, 123399, 1, 1, '2016-08-12', '2016-08-17', NULL, 0, 5.55, NULL, 1),
          (3254555, 100001, 197438, 1, 1, '2016-08-12', '2016-08-17', NULL, 0, 5.55, NULL, 1),
          (3254556, 100003, 144896, 1, 0, '2016-08-14', '2016-08-19', NULL, 0, 4.72, NULL, 1),
          (3254557, 100005, 144896, 4, 1, '2016-08-14', '2016-08-19', NULL, 0, 5.55, NULL, 1);



