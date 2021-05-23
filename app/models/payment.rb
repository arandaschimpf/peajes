class Payment < ApplicationRecord
  belongs_to :booth
  belongs_to :user
  belongs_to :price
  has_one :car, through: :price
end
