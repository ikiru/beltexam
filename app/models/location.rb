class Location < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetup
end
