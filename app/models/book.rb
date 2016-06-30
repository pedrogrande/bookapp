class Book < ApplicationRecord
  belongs_to :category

  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.featured
    where(featured: true)
  end
end
