class Book < ApplicationRecord

  has_many :bookmarks, dependent: :destroy

  validates :title, presence: true

end
