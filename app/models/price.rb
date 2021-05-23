class Price < ApplicationRecord
  belongs_to :car
  has_many :payments

  before_destroy {|record|
    if record.payments.length > 0
      throw(:abort)
    end
  }
end
