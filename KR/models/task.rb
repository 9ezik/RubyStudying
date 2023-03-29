class Task < ApplicationRecord
  validates :name, presence: true
  validates :status, inclusion: { in: %w[в очікуванні в роботі завершені], message: "%{value} недопустимий статус" }
end
