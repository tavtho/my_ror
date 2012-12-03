class User < ActiveRecord::Base
  attr_accessible :full_name, :password, :username, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  validates_attachment :avatar, :presence => true,
  :content_type => { :content_type => "image/jpg" },
  :size => { :in => 0..10.kilobytes }
end
