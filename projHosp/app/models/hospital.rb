class Hospital < ApplicationRecord
  paginates_per 30
  has_many :departments
end
