class Entry < ActiveRecord::Base
  belongs_to :user

  has_many :workouts, :dependent => :destroy
  has_many :warmups,  :dependent => :destroy
  has_one  :event, 	:dependent => :destroy
  validates_presence_of :date
end
