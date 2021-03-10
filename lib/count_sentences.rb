require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    cases = [".","...","!","!!","?"]
    array = []
    cases.each do |i|
      if self.split(i)[0] != nil
        array << self.split(i)
      end
    end
    print array
   array.length
  end
end