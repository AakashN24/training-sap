namespace training.cap.db;

using {managed} from '@sap/cds/common';

entity Users : managed {
    key ID        : UUID;
        firstName : String;
        lastName  : String;
        dob       : Date;
        address   : String;
}

entity Books : managed {
    key ID            : UUID;
        bookName      : String;
        author        : String;
        edition       : Integer;
        noOfCopies    : Integer;
        yearOfPublish : String;
        isAvailable   : Boolean;
}
