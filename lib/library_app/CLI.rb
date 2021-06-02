class CLI 

    def call 
        greeting
        API.get_data
        puts Book.all[0].title
        puts Book.all[0].author
        puts Book.all[0].description
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
 