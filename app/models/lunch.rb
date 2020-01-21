class Lunch < ApplicationRecord
  belongs_to :user

  validates_presence_of %i(name cost_rands cost_cents enjoyment prep_time_minutes user_id)
end
