class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
  validate :must_have_apparel_type

  def must_have_apparel_type
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Must have an apparel type")
    end
  end
  
  has_many :employees
end
