require 'singleton'

class QuizCategory
  include Singleton

  def initialize
    @categories =[]
    @questions = []
    @chosenCategory= ""
  end

  def add_question(question,category)
    puts"ligne 13 add question before :#{question.inspect}"
    question.category_for_question category
    puts"ligne 15 add question after category #{question.inspect}"

    @questions << question
  end
def add_question_to_catgory(question)

  puts"#{question.inspect}"
  category.questions << question
end
  def last_question
    @questions.last
  end
  def add_category(category)
    @categories << category
  end


  def choosecategory
    puts ""
    puts "categories:"
    @categories.size.times do |i|
        puts "#{i+1} - #{@categories[i].category}"
      end
  #  @answers.size.times do |i|
  #    puts "#{i+1} - #{@answers[i].text}"
  #  end
    print "Enter category: "
    category = gets.to_i - 1
    @chosenCategory = @categories[category]
    puts "chosen Category is : #{@chosenCategory.category}"
    chosen = @categories[category]
    puts "#{chosen.inspect}"
    return @categories[category].questions
  end

  def run_quiz
    count=0
    countQ=0
      @questions.each { |q| count += 1  if  q.category === @chosenCategory.category && q.ask }
    puts "You got #{count} answers correct in the category #{@chosenCategory.category}."
  end



#  def method_missing(name, *args)
#   if name.to_s =~ /quizzz/
#   puts "#{name} was called with arguments: #{args.join(',')}"
#   else
#     super
#   end
 #end

 #def method_missing(name, *args)
#    name = name.to_s
#    super unless name =~ /(_info|_price)=?$/
#    if name =~ (/=$/)
#      instance_variable_set("@#{name.chop}", args.first)
#    else
#      instance_variable_get("@#{name}")
#    end
#  end
#end


 def method_missing(name, *args)
   puts "#{name} was called with arguments: #{args.join(',')}"
 end
end
