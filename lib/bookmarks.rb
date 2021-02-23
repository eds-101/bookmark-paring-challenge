require 'pg'

class Bookmarks
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    results = connection.exec('SELECT * from bookmarks;')
    results.map {|bookmark| bookmark['url']}
  end
end

