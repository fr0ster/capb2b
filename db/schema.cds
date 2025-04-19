namespace org.qmacro;

using { cuid, managed } from '@sap/cds/common';

// aspect cuid {
//   key ID : UUID;
// }

entity Books : cuid {
  title  : String;
  author : Association to Authors;
  stock  : Integer;
  price  : Integer;
}

entity Authors : cuid {
  name  : String;
  books : Association to many Books
            on books.author = $self
}

entity Orders : cuid {
  comment : String;
  Items   : Composition of many {
              key pos      : Integer;
                  quantity : Integer;
                  book     : Association to Books;
            }
}


entity Products : cuid, managed {
    key id          : Integer;
        name        : String;
        description : String;
        price       : Integer;
        stock       : Integer;
  }