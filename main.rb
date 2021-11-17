require 'colorize'
require 'pry'

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts '1: Enter git command plz'.colorize(:cyan)
  puts '2: Exit'.colorize(:green)
  choice = gets.to_i
  # binding.pry
  case choice
  when 1
    puts 'Enter git command'.colorize(:yellow)
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid choice'.colorize(:red)
    menu
  end
end

menu
