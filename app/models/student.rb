class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def tests
    BoatingTest.all.select { |test| test.student == self }
  end

  def instructors
    self.tests.map do |test|
      test.instructor
    end
  end

  def unique_instructors
    instructors.uniq
  end

  def add_boating_test(instructor, name, status)
    BoatingTest.new(self, instructor, name, status)
  end

  def gpa
    passed_tests = self.tests.select { |test| test.status == "Passed"}
    (passed_tests.count.to_f * 100.0) / (self.tests.count)
  end

  def self.find_student(first_name_arg)
    @@all.find do |student|
      student.first_name == first_name_arg
    end
  end

end
