# Add your code here

require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index do |song, index|
    if input.to_i == (index + 1)
      puts "Playing #{song}"
      break
    elsif input == song
    puts "Playing #{song}"
      break
    else 
      puts "Invalid input, please try again"
      break
    end 
  end 
end 


def list(songs)
 songs.each_with_index do |song, index|
   puts "#{index+1}. #{song}"
 end 
end 


def exit_jukebox 
  puts "Goodbye"
  
end 

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  while user_input != "exit"
    if user_input == "help"
      help 
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    elsif user_input == "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    else 
      puts "Invalid input, please try again"
      puts "Please enter a command:"
      user_input = gets.strip
    end 
  end 
  exit_jukebox
end 
  
  
  
  

