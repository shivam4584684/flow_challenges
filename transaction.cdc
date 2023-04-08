import BookContract from 0x01

transaction(Title: String, Author: String, Genre: String, Price: Int) {

  prepare(signer: AuthAccount) {}

  execute {
    BookContract.addBook(Title: Title, Author: Author, Genre: Genre, Price: Price)
    log("Book added to the library")
  }
}
