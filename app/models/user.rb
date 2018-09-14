class User < ActiveRecord::Base
  has_secure_password

  def name=(name)
    username = name
  end

  def name
    username
  end
end
