CREATE TABLE users(
	userId BIGSERIAL PRIMARY KEY, 
	fname VARCHAR(100), 
	lname VARCHAR(100), 
	gender VARCHAR(50),
	driving VARCHAR(50) UNIQUE,
	aadhar VARCHAR(50) UNIQUE,
	contactNo VARCHAR(30) UNIQUE, 
	alternateContactNo VARCHAR(30), 
	email VARCHAR(100) UNIQUE, 
	password VARCHAR(100), 
	registerDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	addLine1 VARCHAR(150),
	addLine2 VARCHAR(150),
	colony VARCHAR(100),
	city VARCHAR(100),
	state VARCHAR(100),

	userStatus VARCHAR(50) DEFAULT 'LOGGEDIN',
	userType VARCHAR(50) DEFAULT 'CUSTOMER'
);

CREATE TABLE Ride(
	RideId BIGSERIAL PRIMARY KEY, 
	creatorUserId INT, # ID of user who sent the request
	rideDate DATE,
	rideTime TIME,
	rideStatus VARCHAR(50) DEFAULT 'PENDING',

	fromLocation VARCHAR(100),
	toLocation VARCHAR(100),
	seats INT,
	city VARCHAR(100),
	fare VARCHAR(100),
	carstatus VARCHAR(100),
	message VARCHAR(100)
);


CREATE TABLE ShareRequest(
	RequestID BIGSERIAL PRIMARY KEY,
	RideID INT,
	requestUserId INT #ID of user who sent the request
);