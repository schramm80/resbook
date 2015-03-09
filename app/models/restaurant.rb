class Restaurant < ActiveRecord::Base
  
  validates :name, :description, :address, :phone, :presence => true
  validates :name, :length => { :minimum => 2 }
  validates :phone, :length => { :minimum => 9 }
  validates :name, :uniqueness => { :message => "This name is already taken" }
end
