class Thang < ActiveRecord::Base
  validates :what, :place, :date, :description, presence: true
  validates :what, uniqueness: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.0 }
end
