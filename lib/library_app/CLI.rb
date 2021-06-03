class CLI 

    def call 
        greeting
        API.get_book_data
        Book.list_books_planned
    end 

    def greeting
        puts <<-'EOF'

        _      ____  ____   ____    ____  ____   __ __     
        | |    |    ||    \ |    \  /    ||    \ |  |  |    
        | |     |  | |  o  )|  D  )|  o  ||  D  )|  |  |    
        | |___  |  | |     ||    / |     ||    / |  ~  |    
        |     | |  | |  O  ||    \ |  _  ||    \ |___, |    
        |     | |  | |     ||  .  \|  |  ||  .  \|     |    
        |_____||____||_____||__|\_||__|__||__|\_||____/ 
        
        EOF
    end 

end 
 