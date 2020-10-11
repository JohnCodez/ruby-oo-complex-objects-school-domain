class School

    attr_accessor :roster
    attr_reader :name, :grade
    
    def initialize(school)
        @school = school
        @roster = {}
        
    end


    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
            @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, student|
            sorted_roster[grade] = student.sort
        end
        sorted_roster
    end
end