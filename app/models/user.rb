class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :password_digest
end
