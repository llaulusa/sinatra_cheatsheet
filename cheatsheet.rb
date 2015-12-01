# Basic Objectives
# Create a new directory for your Sinatra project
# Create a new ruby file for your Sinatra server
# Have links on your root page to show hardcoded man files for the cp, ls, mkdir, touch and mv commands.
# Have a link to go back to the root page after seeing a man page for a specific command

# Bonus Objectives
# Have a menu with links
# Have a menu	(see example pictures below)
# Have a search form as one of the menu items
# Submit the form (POST) to your server and get a response of the man page back or display “Nothing was found” if the man command returns an empty string
# Have links to go to and from your menus
# Have a link on the main menu that goes to google for a google search
# this link should open in a new tab so it doesn’t disturb the user's command line tab
# Style the application with CSS
# remember inline css is bad, in file css is pretty bad, external file css is best (hint: you’ll probably have to google how to do this. We are only going to cover the very basics of Sinatra and then go right into the Rails Web Framework)
# Use partials to clean up your views
# We may or may not talk about these in sinatra depending on how much time we have in class and where the class is at. (hint: you’ll probably have to google how to do this. We are only going to cover the very basics of Sinatra and then go right into the Rails Web Framework)


require "sinatra"
require "pry"
require "thin"

# GET Routes

get '/' do
	erb :index
end

get '/command_line' do
	@command = ["cp", "ls", "mkdir", "touch", "mv"]
	erb :command_line
end

get '/command_result/:command' do
	binding.pry
	erb :sublime_text
	@command = params[:command]
	case @command
	when 'cp'
		puts `man cp`
	when 'ls'
		puts `man ls`
	when 'mkdir'
		puts `man mkdir`
	when 'touch'
		puts `man touch`
	when 'mv'
		puts `man mv`
	end
end


get '/search' do

end

get '/google' do 

end
