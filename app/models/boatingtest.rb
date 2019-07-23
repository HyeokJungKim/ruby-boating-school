class BoatingTest
  attr_accessor :status
  attr_reader :student, :name, :instructor
  @@all = []

  def initialize(student, instructor, name, status)
    @student = student
    @instructor = instructor
    @name = name
    @status = status
    @@all << self
  end

  def self.all
    @@all
  end

end
