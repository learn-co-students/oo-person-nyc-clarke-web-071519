# your code goes here
# your code goes here
class Person
   attr_reader :name
   attr_writer :happiness, :hygiene
   attr_accessor :bank_account
   def initialize(name)
       @name = name
       @happiness = 8
       @hygiene = 8
       @bank_account = 25
   end

   def happiness
       if @happiness > 10
           @happiness = 10
       elsif @happiness < 0
           @happiness = 0
       end
       @happiness
   end

   def hygiene
        if @hygiene > 10
           @hygiene = 10
       elsif @hygiene < 0
           @hygiene = 0
       end
       @hygiene
   end

   def happy?
       happiness > 7
   end

   def clean?
       hygiene > 7
   end

   def get_paid(salary)
       @bank_account = (@bank_account + salary)
       return "all about the benjamins"
   end

   def take_bath
       self.hygiene = @hygiene + 4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
   end

   def work_out
       self.hygiene = @hygiene - 3
       self.happiness = @happiness + 2
       return "♪ another one bites the dust ♫"
   end

   def call_friend(felix)
       self.happiness = @happiness + 3
       felix.happiness += 3
       return "Hi #{felix.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(person, topic)
       if topic == "politics"
            self.happiness = @happiness - 2
           person.happiness -= 2
           return 'blah blah partisan blah lobbyist'
       elsif topic == "weather"
           self.happiness = @happiness + 1
           person.happiness += 1
           return "blah blah sun blah rain"
       else
           return 'blah blah blah blah blah'
       end


   end

end