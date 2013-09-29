class Spot < ActiveRecord::Base
  validates :name, :presence => true
end
