using {
    cuid,
    managed
} from '@sap/cds/common.cds';

namespace tutorial.db;

entity Books : cuid, managed {
    title       : String;
    author      : Association to Authors;
    genre       : String;
    publishedAt : Date;
    pages       : Integer;
    price       : Decimal(9, 2);
    Chapters    : Composition of many Chapters
                      on Chapters.book = $self;
// benefit -> when you delete the parent entity the child entity will also be deleted
// there is two more benefits but for chapter 2 not relevant
}

entity Authors : cuid, managed {
    name  : String;
    books : Association to many Books
                on books.author = $self;
}

entity Chapters : cuid, managed {
        number : Integer;
    key book   : Association to Books; // normalerweise nutzt man hier key parent
}
