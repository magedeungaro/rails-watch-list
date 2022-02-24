class Movie < ApplicationRecord
  has_many :bookmarks

  before_destroy :ensure_no_bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  private

  def ensure_no_bookmarks
    self.errors[:base] << 'Cannot delete movie with bookmarks' unless self.bookmarks.empty?
  end
end
