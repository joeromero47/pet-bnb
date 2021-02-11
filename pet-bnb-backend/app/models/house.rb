class House < ApplicationRecord
  validates :name, :address, :city, :pets, presence: true
end
