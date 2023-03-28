class HeroPower < ApplicationRecord
  belongs_to :user
  validates :strength, inclusion: { in: %w[Strong Weak Average] }
end
