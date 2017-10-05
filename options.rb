class Option
  attr_accessor :name, :vote

  def initialize(name) 
    @name = name
    @vote = 0
  end

  def add_to_vote()
    @vote += 1
  end

end