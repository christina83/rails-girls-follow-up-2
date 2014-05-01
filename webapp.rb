# Hallo Christina,
#
# wie ich dich einschätze bist du neugierig und hast diese Datei bestimmt
# aufgemacht und fragst dich jetzt, was es hiermit wohl auf sich hat. Nun, so 
# sieht eine einfach Webapplikation in Ruby aus. Starte sie doch einfach mal 
# und geh mit deinem Browser auf 
#
#   https://rails-girls-follow-up-2-c9-t6d.c9.io/ :)
#
# -- Konstantin

# require benutzt man um andere Ruby Bibliotheken ("Gems") oder eigene Dateien
# im Projekt zu laden. In diesem Fall handelt es sich um das Gem "sinatra"
# Installation von Gems (über Kommandozeile): gem install sinatra
require 'sinatra' 

# ENV.fetch(<string>) liefert den Inhalt einer Umgebungsvariable zurück. Diese
# werden üblicherweise in der Konfigurationsdatei deiner Kommandozeile 
# definiert.

# Jede Webapplikation wird von einem Webserver betrieben, dieser lauscht auf
# einer Netzwerkaddresse (IP) und einem spezifischen Port. Ein Port ist exklusiv
# einer Anwendung (Webserver, Mail Client, ...) zugeordnet. Maximal stehen
# 65536 Ports zur Verfügung. Diese Anwendung läuft normal auf Port 8080.

# Netzwerkaddresse konfigurieren
set :bind, ENV.fetch("IP") { raise "Environment variable $IP not set" }

# URL Aufbau
#      scheme-specific-part →                        →                       → |
#      |
# http://hans:geheim@example.org:80/demo/example.cgi?land=de&stadt=aa#geschichte
# |      |    |      |           | |                 |                |
# |      |    |      host        | url-path          query            fragment
# |      |    password           port
# |      user
# scheme (hier gleich Netzwerkprotokoll)

# Netzwerkport konfigurieren
set :port, ENV.fetch("PORT") { raise "Environment variable $PORT not set" }

# GET https://rails-girls-follow-up-2-c9-t6d.c9.io/
get '/' do
    content_type 'text/html'
   "Hello Christina!" 
end

# z.b. GET https://rails-girls-follow-up-2-c9-t6d.c9.io/hello/Konstantin
# Sinatra erlaubt variable Elemente im URL-Path, diese werden mit einem :
# eingeleitet. Diese Elemente auch als Parameter bezeichnet lassen sich
# dann über das params Objekt abrufen. params ist quasi ein Hash.
get '/hello/:firstname' do
    content_type 'text/html'
    fn = params[:firstname]
    "Hello #{fn}!"
end

