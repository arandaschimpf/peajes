class Car < ApplicationRecord
  has_many :prices
  has_many :payments, through: :price

  before_destroy {|record|
    if record.payments.length > 0
      throw(:abort)
    end
  }
end
