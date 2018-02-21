class Client < ApplicationRecord
  belongs_to :Adress
  has_many :Etude
  accepts_nested_attributes_for :Adress, :allow_destroy => true
  accepts_nested_attributes_for :Etude, :allow_destroy => true
end
