class Bookmark
  attr_reader :bookmarks

  def self.all
    bookmarks = ["http://www.google.com", "http://www.makersacademy.com", "http://www.destroyallsoftware.com"]
  end
end