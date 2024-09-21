CREATE TABLE `taskmanager-systemDB`.TaskStates (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Descr varchar(64) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='Defines the states of the tasks';


CREATE TABLE `taskmanager-systemDB`.TaskCategories (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FOREIGN KEY (Customer_ID) References Customer(Customer_ID),
	Descr varchar(64) NOT NULL
	Colour varchar(8)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='Defines custom task categories';

CREATE TABLE `taskmanager-systemDB`.Tasks (
	ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Name varchar(255) NOT NULL,
	FOREIGN KEY (Customer_ID) References Customer(ID),
	FOREIGN KEY (TaskCategory_ID) References TaskCategories(ID),
	FOREIGN KEY (TaskStates_ID) References TaskStates(ID),
	
	Date_Started Date,
	Date_Ended Date
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='Defines tasks that a customer can setup';


Insert into TaskStates (Descr)
VALUES
('New'),
('In Progress'),
('Done'),
('Abandoned'),
('Ready');