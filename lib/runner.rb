require 'pry'
require_relative './project.rb'
require_relative './backer.rb'

steve = Backer.new("steve")

big_project = Project.new("big_project1")
small_project = Project.new("small_project")

binding.pry
puts "Mischief managed!"