class Instructor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def tests
    BoatingTest.all.select { |test| test.instructor == self }
  end

  def students
    self.tests.map { |test| test.student }
  end

  def pass_student(student_arg, name_arg)
    found_test = self.tests.find do |test|
      test.student == student_arg && test.name == name_arg
    end

    if found_test
      found_test.status = "Passed"
      return found_test
    else
      return BoatingTest.new(student_arg, self, name_arg, "Passed")
    end

    # found_test

  end

end
