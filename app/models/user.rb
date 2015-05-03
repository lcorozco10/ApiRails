class User < ActiveRecord::Base
  #validation for model fields http://guides.rubyonrails.org/active_record_validations.html
  validates :username, presence: true, length: { minimum: 5 }

  has_secure_password
  validates :password, presence: true, length:{minimum:6}

end
