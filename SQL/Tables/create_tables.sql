create table Platform (
    id int NOT NULL AUTO_INCREMENT,
    description varchar(50),
    PRIMARY KEY (id)
);

create table Application (
    id int NOT NULL AUTO_INCREMENT,
    description varchar(50),
    PRIMARY KEY (id)
);
create table ApplicationPlatformLink (
    id int NOT NULL AUTO_INCREMENT,
    ApplicationID int,
    PlatformID int,
    BinaryLocation varchar(120)
);

create table User(
    id int NOT NULL AUTO_INCREMENT,
    DiscordID int,
    PRIMARY KEY (id)
);

create table APIKey(
    id int NOT NULL AUTO_INCREMENT,
    UserID int,
    APIKey varchar(64),
    PRIMARY KEY (id)
);

create table Permission(
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(50),
    Hierarchy int,
    PRIMARY KEY (id)
);

create table APIKeyPermissionLink(
    id int NOT NULL AUTO_INCREMENT,
    APIKeyID int,
    PermissionID int,
    PRIMARY KEY (id)
);

create table Task(
    id int NOT NULL AUTO_INCREMENT,
    ApplicationID int,
    UserID int,
    StatusID int,
    ResultID int,
    PRIMARY KEY (id)   
);

create table Result(
    id int NOT NULL AUTO_INCREMENT,
    ApplicationID int,
    ResultLocation varchar(120),
    PRIMARY KEY (id)
);