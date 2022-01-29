require 'pry'

class String

  def sentence?
    self.split("")[-1] == "."
  end

  def question?
    self.split("")[-1] == "?"
  end

  def exclamation?
    self.split("")[-1] == "!"
  end

  def count_sentences
    ## \b sets word boundary to not match characters ending word
    ## \s means any whitespace character - keeps .split from splitting trailing punctuation(!!!)
    ## [?!.] searches for any of these punctuation marks
    ## .split splits by above regex search
    ## .length gives you the length of returned array split by punction followed by whitespace
    self.split(/\b[?!.]+\s/).length
  end
end