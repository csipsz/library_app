class Book 

    attr_accessor :id, :created_at, :updated_at, :author, :title, :description, :read, :planned, :page_count

    @@all = [] 

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end 