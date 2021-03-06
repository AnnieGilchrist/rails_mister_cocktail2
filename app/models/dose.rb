class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :description, presence: true
end
