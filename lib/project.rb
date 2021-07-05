class Project
  attr_accessor :backers, :title

  @@all = []

  def initialize(title)
    @title = title
    @backers = []

    @@all << self
  end

  def self.all 
    @@all
  end

  def add_backer(name)
    new_backer = Backer.new(name)

    @backers << new_backer.backer_name.backer_name
    #only selects the name of the Backer instance and pushes it to the array

    name.backed_projects = self
    #makes sure that the name is associated with the instance
  end


end
