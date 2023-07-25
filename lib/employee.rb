class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200} 
  validates :store_id, presence: true

  # after create doesnt log to database
  before_create do
    generateRandomPassword(8)
    
  end

  private

  def generateRandomPassword(length)
    self.password = (0...length).map { ('a'..'z').to_a[rand(26)] }.join
  end

end
