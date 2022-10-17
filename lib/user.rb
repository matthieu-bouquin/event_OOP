require "pry"

class User

    attr_accessor :email, :age 
    @@user_all = []


    def initialize(email, age)
        @email = email
        @age = age
        @@user_all << self
    end


    def self.all
        return @@user_all
    end

    def self.find_by_email(email)
        @@user_all.each do |user|
            if user.email == email
            return user
            puts "Voici l'age du User trouvé : #{@age}"
        end
        end
        
    end


end


binding.pry
puts "end of file"