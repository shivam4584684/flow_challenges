import BookContract from 0x01

pub fun main(Title: String): BookContract.Book {
    return BookContract.Books[Title]!
}
