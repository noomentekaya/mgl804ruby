require './category'
class Question

  def initialize( text )
    @text = text
    @answers = []
  end

  def add_answer(answer)
    @answers << answer
  end
  def category_for_question(category)
    puts"************************category in class question #{category.inspect}"

    @category=category
  end
  def category
    @category
  end
  def answers
    @answers
  end

  def ask
    puts ""
    puts "Question: #{@text}"

    @answers.size.times do |i|
      puts "#{i+1} - #{@answers[i].text}"
    end
    print "Enter answer: "
    answer = gets.to_i - 1
    return @answers[answer].correct
  end
  def method_missing(name, *args)
    puts "#{name} was called with arguments: #{args.join(',')}"
  end
end
