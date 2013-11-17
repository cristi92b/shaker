require 'songs'

class Song
  attr_reader :title, :artist

  @@songs = []

  class << self
     def create(params = {})
        @@songs << Song.new(params)
     end
  end
  def initialize(opts)
     @title=opts[:title]
     @artist=opts[:artist]
  end
  def self.all
    @@songs
  end

  def self.delete_all
    @@songs = []
  end
end

Song.create title: "titlu" , artist: "artist"
