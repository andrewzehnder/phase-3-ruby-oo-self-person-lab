require 'pry'

class Person

    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #setter
    def bank_account=(value)
        @bank_account = value
    end

    #getter
    def bank_account
        @bank_account
    end

    def happiness=(value)
        if value <= 10 && value >= 0
            @happiness = value
        elsif value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(value)
        if value <= 10 && value >= 0
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        end
    end

    def hygiene
        @hygiene
    end

    def clean?
        # binding.pry
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end