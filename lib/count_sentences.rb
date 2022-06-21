require 'pry'

class String
 attr_accessor :string
 def initialize(string)
  @string = string
 end

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
    self.scan(/[^\.!?]+[\.!?]/).count
  end
end


string = 'one. two. three?'
p string =~ /two/