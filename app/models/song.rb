class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def create_list_title
      return "#{artist_name} - #{self.title}"
  end
end
