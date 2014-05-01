# Eine Klasse ist ein Bauplan für ein Objekt / Objektinstanz / Instanz (z.B. der Hund an sich).
# Ein Objekt ist eine konkrete Realisierung einer Klasse (z.B. ein bestimmter Hund).
# Eine Feld / Eigenschaft / Attribut / Property / Attribute der Klasse "Hund" 
# ist z.B. "Impfdatum" (Hund-Objekt hat dann "April 2012"), die Werte eines
# solchen Feldes / ... werden in Instanzvariablen gespeichert.

# Problem:
# Wir möchten ein Programm schreiben, dass Personendaten verwalten kann und
# der Person in der eigenen Muttersprache eine Begrüßung anzeigen kann.

# Klassendefinition
# Klassen bestehen aus Methodendefinitionen und Feldern
# Methoden sind Operationen die dein Objekt bereitstellt (z.B. "impfen", auf Objekt ausgeführt -> Variable ändert sich)
# Felder speichern die Daten, die mit deinem Objekt assoziert sind.
class Greeter
    # Methodendefinition
    # Die Methode akzeptiert ein Argument / Parameter, das / der innerhalb der 
    # Methode als "person" bezeichnet ist.
    def say_hello_to(person)
        if person.language == "de"
            puts "Hallo, #{person}!" 
        else
            puts "Hello, #{person}!"
        end
    end
end

class Person
    attr_accessor :name # definiert das Feld "name"
   
    attr_accessor :language # generiert essentiell Z.33 - 41
    # oder
    def language
        # Instanzvariablen beginnen immer mit @ und sind überall in der Klasse
        # verfügbar.
        
        @language
    end
   
    def language=(blubb)
        @language = blubb
    end
   
    def to_s
      name 
    end
end

# Objektinstanzierung
# Instanzierung: Der Computer reserviert Hauptspeicher und initialisiert das
# Objekt.
# Intialisierung: Was passiert, wenn du ein neues Objekt einer Klasse erzeugst?
p1 = Person.new # Eine neue Instanz der Klasse Person wird angelegt und in der Variable p1 gespeichert
p1.name = "Konstantin" # p1 bekommt einen Namen
p1.language = "de"

puts "Let's send #{p1.name} a friendly hello!"

greeter = Greeter.new
greeter.say_hello_to(p1) # p1 wird als Parameter an die Methode say_hello_to übergeben






