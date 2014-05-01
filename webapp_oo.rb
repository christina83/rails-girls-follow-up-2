require 'sinatra/base'

##
# Klassendefinitionen
# "Baupläne" für die Objekte unserer Webapplikation
##

class Person
    attr_accessor :name
    attr_accessor :language
   
    def to_s
      name 
    end
end

# PersonWithAge erbt alle Felder und Methoden von Person und erweitert
# die Klasse um ein zusätzliches Feld "age". In diesem Fall ist Person die
# Superklasse von PersonWithAge. Umgekehrt ist PersonWithAge eine Subklasse
# von Person.
class PersonWithAge < Person
   attr_accessor :age 
end

class Greeter
    def say_hello_to(person)
        if person.language == "de"
            puts "Hallo, #{person}!" 
        else
            puts "Hello, #{person}!"
        end
    end
end

# Sinatra::Base implmentiert alles was es für eine gute Webapplikation braucht,
# so dass wir uns keine Gedanken um Kommunikation zwischen unserer Applikation
# und dem Browser des Nutzers machen müssen.
#
#    https://rails-girls-follow-up-2-c9-t6d.c9.io/exit
#
class Webapp < Sinatra::Base
    set :bind, ENV.fetch("IP") { raise "Environment variable $IP not set" }
    set :port, ENV.fetch("PORT") { raise "Environment variable $PORT not set" }
    
    # Definitert die "Homepage" unser Webapplikation.
    get "/" do
        content_type "text/plain"
        "It works!"
    end
    
    get "/greet/:name" do
       name = params[:name].to_s
       
       # Aufgabe:
       # Nutze Person und Greeter um den Nutzer unserer Applikation zu
       # grüßen, wenn er bspw. die URL 
       #
       #    https://rails-girls-follow-up-2-c9-t6d.c9.io/greet/Konstantin
       #
       # aufruft.
       
       "Hello John Doe" # offensichtlich nicht so flexibel wie's sein soll.
    end
    
end

##
# Hauptprogramm
##

Webapp.run!
