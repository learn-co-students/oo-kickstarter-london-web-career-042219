require 'pry'
require_relative './project'

class Backer

attr_reader :name
attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    # @backers << self
    # @backers << project
  end

  # Backer - More Advanced #back_project
  #   also adds the backer to the project's backers array (FAILED - 1)
  #
  # Project - More Advanced #add_backer
  #   also adds the project to the backer's backed_projects array (FAILED - 2)
end



"lalala"
