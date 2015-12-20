require_relative "category"
require_relative "question"
require_relative "answer"


require "test/unit"

class TestCategory < Test::Unit::TestCase
@c=nil
@q=nil
@a1= nil
@a2=nil
  def test_Should_have_One_question
    @c = Category.new("Test")
    @q = Question.new("Question ?")

    @c.add_question @q
    assert_equal(1, @c.questions.size)
  end

  def test_Should_have_more_than_One_answer
    @q = Question.new("Question ?")
    @a1= Answer.new("answer1",true)
    @a2= Answer.new("answer2",false)

    @q.add_answer @a1
    @q.add_answer @a2
    assert_equal(2, @q.answers.size)
  end

  def test_Should_have_more_than_One_Correct_answer
    @q = Question.new("Question ?")
    @a1= Answer.new("answer1",true)
    @a2= Answer.new("answer2",false)

    @q.add_answer @a1
    @q.add_answer @a2
    puts "*****#{@a1.correct}"
    count=0
    @q.answers.each { |qs| count += 1  if qs.correct }
    assert_equal(1, count)
  end

end
