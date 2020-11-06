class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end


    def backed_projects
        backed_projects = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        backed_projects.map do |pb|
            pb.project
        end
    end

end