require 'pry'

class API 

    URL="http://localhost:3000/"

    def self.get_book_data 
        response = RestClient.get(URL + "books")
        book_data = JSON.parse(response)
        book_data.map do |hash| 
            id = hash['id']
            title = hash['title']
            description = hash['description']
            author = hash['author']
            read = hash['read']
            planned = hash['planned']
            page_count = hash['page_count']
            Book.new(id, author, title, description, read, planned, page_count)
        end 

    end 

end 