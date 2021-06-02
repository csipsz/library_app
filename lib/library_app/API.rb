class API 

    URL="http://localhost:3000/"

    def self.get_data 
        response = RestClient.get(URL + "books")
        book_data = JSON.parse(response)
        book_data.map do | hash | 
            Book.new(hash)
        end 
    end 

end 