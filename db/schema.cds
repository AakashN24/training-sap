namespace training.cap.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Users : cuid, managed {
    // key ID        : UUID;
    firstName         : String @title: '{i18n>firstName}';
    lastName          : String @title: '{i18n>lastName}';
    dob               : Date   @title: '{i18n>dob}';
    address           : String @title: '{i18n>address}';
    to_userCredential : Association to one UserCredentials;
    to_borrowedBook   : Composition of many BorrowedBooks
                            on to_borrowedBook.to_user = $self;
};

entity Books : managed {
    key ID              : UUID;
        bookName        : String;
        author          : String;
        edition         : Integer;
        noOfCopies      : Integer;
        yearOfPublish   : String;
        isAvailable     : Boolean;
        to_borrowedBook : Composition of many BorrowedBooks
                              on to_borrowedBook.to_book = $self;
};

entity UserCredentials : managed {
    key ID        : UUID;
        username  : String @mandatory;
        password  : String @mandatory;
        lastLogin : Timestamp;
        to_user   : Association to one Users;
};

entity BorrowedBooks : managed {
    key ID      : UUID;
        to_user : Association to one Users;
        to_book : Association to one Books;
}

view AvailbleBooks as
    select from Books {
        ID @UI.HiddenFilter,
        bookName,
        author,
        yearOfPublish,
        isAvailable
    }
    where
        isAvailable = true;
