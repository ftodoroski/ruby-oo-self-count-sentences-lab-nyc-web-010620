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
    return 0 if self == ""

    self.split(" ").count { |ele| ele.sentence? || ele.question? || ele.exclamation? }
  end
end