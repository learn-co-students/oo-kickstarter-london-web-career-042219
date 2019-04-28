class Backer

  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name)
     @name = name
     @backed_projects = []
  end

  def add_project_to_portfolio(project)
     @backed_projects << project
  end

  def back_project(project)
     self.add_project_to_portfolio(project)
     project.new_backer(self)
  end

end
