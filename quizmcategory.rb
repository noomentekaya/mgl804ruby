#!/usr/bin/env ruby
#
require './quizcategory'
require './category'
require './question'
require './answer'

@category = nil

def category (category)
  QuizCategory.instance.add_category Category.new(category)
  @category = Category.new(category)
end
def choose
  QuizCategory.instance.choosecategory
end

def question(text)
  puts"#{@category.inspect}"
  QuizCategory.instance.add_question Question.new(text),@category.category
end

def right(text)
  QuizCategory.instance.last_question.add_answer Answer.new(text,true)
end

def wrong(text)
  QuizCategory.instance.last_question.add_answer Answer.new(text,false)
end

load 'questionscategory.qm'
QuizCategory.instance.choosecategory
QuizCategory.instance.run_quiz
