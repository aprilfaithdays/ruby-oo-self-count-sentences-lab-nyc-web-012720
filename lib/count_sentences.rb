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
    self.sentence? || self.question? || self.exclamation?
    count_this = self.split(/\. |\? |\! /)
    count_this.count
  end
end