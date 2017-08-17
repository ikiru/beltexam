class Meetup < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :discussions

  validates :name, presence:true
  validates :date, presence:true
end
