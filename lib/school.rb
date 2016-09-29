require 'pry'

class School

  def initialize(school,roster = {})
    @school = school
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(student,year)
    @roster[year]=[] unless @roster.has_key?(year)
    @roster[year]<<student
  end

  def grade(year)
    @roster[year] if @roster.has_key?(year)
  end

  def sort
    @roster.each_with_object({}) {|(year,student_list),obj| obj[year]=student_list.sort}
  end

end
