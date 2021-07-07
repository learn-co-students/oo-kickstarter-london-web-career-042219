class Project
    attr_accessor :title, :backers
    
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        self.new_backer(backer)
        backer.add_project_to_portfolio(self)
    end

    def new_backer(backer)
        @backers << backer
    end
end