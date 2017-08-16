class Join < ActiveRecord::Base
  belongs_to :meetup
  has_many :user
end
