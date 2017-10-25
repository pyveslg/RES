class MonFrenchExpresso < ApplicationRecord
  has_many :expressions, dependent: :destroy
end
