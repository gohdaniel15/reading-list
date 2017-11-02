class Book < ApplicationRecord

  has_many :bookmarks, dependent: :destroy

  accepts_nested_attributes_for :bookmarks

  validates :title, presence: true

end
