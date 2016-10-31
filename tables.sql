CREATE TABLE IF NOT EXISTS Customers (
  CustomerID      INT         NOT NULL,
  FirstName       VARCHAR(30) NOT NULL,
  LastName        VARCHAR(30) NOT NULL,
  StreetAddress   VARCHAR(35) NOT NULL,
  City            VARCHAR(20) NOT NULL,
  State           CHAR(2)     NOT NULL,
  Zip             INT         NOT NULL,
  PhoneNumber     VARCHAR(12),
  CreditCard      VARCHAR(19) NOT NULL,
  TotalNumOfRentals      INT  NOT NULL,
  NumOfActiveRentals     INT  NOT NULL,
  NumOfRentals30         INT  NOT NULL,
  NumOfRentals365        INT  NOT NULL,
  PRIMARY KEY (CustomerID)
);

CREATE TABLE IF NOT EXISTS MovieLibrary (
  MovieCode   INT           NOT NULL,
  MovieName   VARCHAR(35)   NOT NULL,
  Genre       VARCHAR(12)   NOT NULL,
  Rating      VARCHAR(10),
  RunTime     TIME          NOT NULL,
  ReleaseDate DATE          NOT NULL,
  PRIMARY KEY (MovieCode)
);

CREATE TABLE IF NOT EXISTS MediaInventory (
  MovieCode       INT   NOT NULL,
  SetID           INT   NOT NULL,
  DVDorVideo      BOOL  NOT NULL,
  RentedOrNO      BOOL  NOT NULL,
  LastRentalID    INT   NOT NULL,
  PRIMARY KEY (MovieCode, SetID, DVDorVideo),
  FOREIGN KEY (MovieCode) REFERENCES MovieLibrary (MovieCode)
);

CREATE TABLE IF NOT EXISTS Rentals (
  RentalID    INT          NOT NULL,
  CustomerID  INT          NOT NULL,
  MovieCode   INT          NOT NULL,
  SetID       INT          NOT NULL,
  DVDorVideo  BOOL         NOT NULL,
  RentalDate  DATE         NOT NULL,
  DueDate     DATE         NOT NULL,
  ReturnDate  DATE,
  LateorNO    BOOL         NOT NULL,
  TotalBill   Decimal(7,2) NOT NULL,
  LateFees    Decimal(7,2),
  ActiveOrNO  BOOL         NOT NULL,
  PRIMARY KEY (RentalID),
  FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
  FOREIGN KEY (MovieCode, SetID, DVDorVideo) REFERENCES MediaInventory (MovieCode, SetID, DVDorVideo)
);

CREATE TABLE IF NOT EXISTS Actors (
  ActorID     INT           NOT NULL,
  FirstName   VARCHAR(35)   NOT NULL,
  LastName    VARCHAR(35)   NOT NULL,
  Age         INT           NOT NULL,
  Country     VARCHAR(15),
  PRIMARY KEY (ActorID)
);

CREATE TABLE IF NOT EXISTS MovieCredits (
  MovieCode   INT           NOT NULL,
  ActorID     INT           NOT NULL,
  Credit      VARCHAR(15)   NOT NULL,
  Role        VARCHAR(15),
  Oscar       BOOL          NOT NULL,
  PRIMARY KEY (MovieCode, ActorID),
  FOREIGN KEY (ActorID) REFERENCES Actors (ActorID),
  FOREIGN KEY (MovieCode) REFERENCES MovieLibrary (MovieCode)
);

CREATE TABLE IF NOT EXISTS Distributors (
  DistID        INT           NOT NULL,
  DistName      VARCHAR(20)   NOT NULL,
  StreetAddress VARCHAR(35)   NOT NULL,
  City          VARCHAR(20)   NOT NULL,
  State         CHAR(2)       NOT NULL,
  Zip           INT           NOT NULL,
  PhoneNumber   VARCHAR(15)   NOT NULL,
  PRIMARY KEY (DistID)
);

CREATE TABLE IF NOT EXISTS MovieCatalog (
  MovieID     INT           NOT NULL,
  DistID      INT           NOT NULL,
  DVDorVideo  BOOL          NOT NULL,
  MovieName   VARCHAR(65)   NOT NULL,
  MoviePrice  Decimal(7,2)  NOT NULL,
  PRIMARY KEY (MovieID, DistID, DVDorVideo),
  FOREIGN KEY (DistID) REFERENCES Distributors (DistID)
);

