class Item < ApplicationRecord
 validates :name, presence: true
 validate :expected_cost,  comparison: { less_than: 50 }
# validates :is_done, acceptance: true, on: :create
end