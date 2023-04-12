class Patient < ApplicationRecord
  paginates_per 30
  belongs_to :card
end

