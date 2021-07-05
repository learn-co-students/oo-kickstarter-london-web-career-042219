class Backer
  attr_accessor :backed_projects, :backer_name


  @@all = [] #tracks everything

  def initialize(backer_name)
    @backer_name = backer_name
    @backed_projects = []

    @@all << self
  end

  def back_project(project_name)
    new_project = Project.new(project_name)

    @backed_projects << new_project.title.title
    #only selects the title of the Project instance and pushes it to the array

    project_name.backers = self
    #makes sure the project_name is associated with the instance

  end

  def self.all
    @@all
  end




end
