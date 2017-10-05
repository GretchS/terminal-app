class User
  attr_accessor :user_name, :votes

  def initialize(user_name)
    @user_name = user_name
    @votes = []
  end

end