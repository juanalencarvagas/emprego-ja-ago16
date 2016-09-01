class Job < ApplicationRecord
  belongs_to :company

  validates :title, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true


end
