class Item < ApplicationRecord
 validates :name, presence: true
 validates :expected_cost,  comparison: { less_than: 50 }
# validates :is_done, acceptance: true, on: :create
end