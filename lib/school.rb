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
    @roster.keys.sort!
    @roster.values.map! {|student_list| student_list.sort!}
    @roster
  end
  # binding.pry
end
