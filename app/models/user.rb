class User < ActiveRecord::Base
  #validation for model fields http://guides.rubyonrails.org/active_record_validations.html
  validates :username, presence: true,
            length: { minimum: 5 }
end
