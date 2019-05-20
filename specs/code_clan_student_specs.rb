require('minitest/autorun')
require('minitest/rg')
require_relative('../code_clan_student')

class TestCodeClanStudent < MiniTest::Test

  def test_name
    student = Student.new('Mike', 'E31')
    assert_equal('Mike', student.name)
  end

  def test_cohort
    student = Student.new('Dave', 'E30')
    assert_equal('E30', student.cohort)
  end

  def test_set_name
    student = Student.new('Gerry', 'G6')
    assert_equal('Simon', student.set_name('Simon'))
  end

  def test_talk
    student = Student.new('Jess', 'G2')
    students_chat = student.talk
    assert_equal('I can talk!', students_chat)
  end

  def test_say_favourite_language
    student = Student.new('Bob', 'E100')
    assert_equal('I love Fortran 90', student.say_favourite_language('Fortran 90'))
  end

end
