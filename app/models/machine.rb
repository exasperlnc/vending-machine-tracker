class Machine < ApplicationRecord
  validates_presence_of :location
  
  belongs_to :owner
  has_many :snack_machines
end
