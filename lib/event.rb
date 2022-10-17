require "pry"
require "time"

class Event
    
    attr_accessor :start_date, :duration, :title, :attendees
    @@event_all = []


    def initialize(event_start_date, event_duration, event_title, event_attendees)
        @start_date = Time.parse(event_start_date)
        @duration = event_duration
        @title = event_title
        @attendees = event_attendees
        @@event_all << self
    end
    
    def postdone_24h
        @start_date = @start_date + 86400
        return @start_date
    end

    def end_date
        return @start_date + @duration
    end

    def is_past?
        return @start_date < Time.now
    end

    def  is_future?
        return @start_date > Time.now
    end

    def is_soon?
        return @start_date - 1800 < Time.now
    end

    def to_s
        puts ">Titre : #{@title}"
        puts ">Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M:%S")}"
        puts ">Durée : #{@duration} minutes"
        puts ">Invités : #{@attendees}"
    end


end




binding.pry
puts "end of file"