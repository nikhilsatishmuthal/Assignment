class Message < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :user_id
  validates :user, :presence => true 
  validates :user_id, :presence => true 
  validates :content, :presence => true

  default_scope :order => "created_at DESC" 
end
