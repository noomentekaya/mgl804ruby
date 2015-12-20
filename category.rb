
class Category

  attr_reader :category, :questions
  def initialize( category )
    @category = category
    @questions = []
  end
def category
  @category
end
  def add_question(question)
    @questions << question
  end
  def questions
    @questions 
  end
  def putQuestions
    puts ""
    puts "Category: #{@category}"

    @questions.size.times do |i|
      puts "#{questions[i]}"
      puts "#{i+1} - #{@questions[i].text}"
    end
    return @questions

  end
  def method_missing(name, *args)
    puts "#{name} was called with arguments: #{args.join(',')}"
  end
end
