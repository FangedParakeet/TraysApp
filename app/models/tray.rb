class Tray < ActiveRecord::Base
  attr_accessible :image, :name
  
  mount_uploader :image, ImageUploader
end
