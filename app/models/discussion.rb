class Discussion < ActiveRecord::Base
  belongs_to :user
  has_many :events

  validates :comment , presence:true
  
end
