class Additive < ApplicationRecord
  has_many :ingredients
  has_many :allergens

  validates :name, :information, :danger_level, presence: true
  validates :name, uniqueness: true


  include PgSearch::Model
  pg_search_scope :search_by_aa,
                  against: %i[name],
                  associated_against: { allergens: [:name] },
                  # joins: { allergens: :additive },
                  using: { tsearch: { prefix: true } }

end
