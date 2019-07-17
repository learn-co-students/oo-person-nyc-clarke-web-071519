# your code goes here
class Person

    attr_reader :name 

    attr_accessor :bank_account, :happiness, :hygiene 

    def initialize(name)
        @name = name 
        @bank_account = 25  
        @happiness = 8 
        @hygiene = 8
    end 

    def happiness 
        # 0 <= @happiness <= 10
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness
    end

    def hygiene 
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def happy?
         happiness > 7 
    end 

    def clean?
        hygiene > 7
    end 

    def get_paid(salary)
        self.bank_account += salary 
        p "all about the benjamins"
        
    end 

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        p "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end 

    def start_conversation(person, topic)
        level = 1

        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2  
            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return 'blah blah sun blah rain'

        else 
            return 'blah blah blah blah blah'
        end 
    end 


    

end 

 