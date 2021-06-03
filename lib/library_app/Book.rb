class Book 

    attr_accessor :id,  :author, :title, :description, :read, :planned, :page_count

    @@all = [] 

    def initialize(id, author, title, description, read, planned, page_count)
        self.id = id
        self.author =author
        self.title = title
        self.description = description
        self.read = read
        self.planned = planned
        self.page_count = page_count
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.list_books_read
        self.all.each do | book | 
            if book.read
                puts "#{book.author} - #{book.title}"
                puts book.description
                puts "Number of pages: #{book.page_count}"
            end 
        end 
    end 

    def self.list_books_planned
        self.all.each do | book | 
            if book.planned
                puts "#{book.author} - #{book.title}"
                puts book.description != "" ? book.description : "No description yet"
                puts "Number of pages: #{book.page_count}"
            end 
        end 
    end 
end 