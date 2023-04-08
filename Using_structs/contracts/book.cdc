pub contract BookContract {
    pub var Books: {String: Book}
    
    pub struct Book {
        pub let Title: String
        pub let Author: String
        pub let Genre : String
        pub let Price: Int
        
        init(_Title: String, _Author: String, _Genre: String, _Price: Int) {
            self.Title = _Title
            self.Author = _Author
            self.Genre = _Genre
            self.Price = _Price
        }
    }
    
    pub fun addBook(Title: String, Author: String, Genre: String, Price: Int) {
        let newBook = Book(_Title: Title, _Author: Author, _Genre: Genre, _Price: Price)
        self.Books[Title] = newBook
    }
    
    init() {
        self.Books = {}
    }
}
