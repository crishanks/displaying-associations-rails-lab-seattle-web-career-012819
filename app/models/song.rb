class Song < ActiveRecord::Base
  belongs_to :artist

  before_save :make_title_case

  def make_title_case
    self.title.titlecase
  end

  def artist_name
    self.artist.name
  end
end
