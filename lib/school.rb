# code here!
class School
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|k,v| @roster[k].sort!}
    @roster
  end
end
