DROP DATABASE IF EXISTS PCSM;
CREATE DATABASE PCSM;
USE PCSM;

CREATE TABLE User (
    UserID varchar (255) PRIMARY KEY,
    UserFirstName varchar (50) NULL,
    UserLastName varchar (50) NULL,
    UserEmail varchar (50) NULL,
    UserPassword varchar (50) NULL,
    ProfileDesc varchar (255) NULL,
    ProfilePic varchar(255) NULL
);

CREATE TABLE Post (
    PostID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PostTitle varchar (255) NULL,
    PostDesc varchar (255) NULL,
    PostLikes varchar (255) NULL,
    PostTime DATE NOT NULL,
    UserID varchar(255) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);

CREATE TABLE MediaFile (
    MediaFileID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    MediaFileName varchar (255) NULL,
    MediaFileURL varchar (255) NULL,
    PostID int NOT NULL,
    FOREIGN KEY (PostID) REFERENCES Post (PostID)
);

CREATE TABLE Comments (
    CommentID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CmtAttachement varchar (255),
    CommentTimeStamp DATE NOT NULL,
    CommentText varchar (255),
    CommentStyle varchar (255),
    UserID varchar(255) NOT NULL,
    PostID int NOT NULL,
    FOREIGN KEY (PostID) REFERENCES Post (PostID),
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);