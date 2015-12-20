require 'singleton'

class Quiz
  include Singleton

  def initialize
    @questions = []
  end

  def add_question(question)
    @questions << question
  end

  def last_question
    @questions.last
  end

  def run_quiz
    count=0
    @questions.each { |q| count += 1 if q.ask }
    puts "You got #{count} answers correct out of #{@questions.size}."
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
