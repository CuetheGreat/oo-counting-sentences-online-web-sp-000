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
    cases = ["...","!","!!","?"]
    array = self.split(".")
    array.each_with_index.collect do |v,i|
      array.split(cases[i])
    end
   array.length
  end
end