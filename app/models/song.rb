require 'songs'
require 'active_model'

class Song
  include ActiveModel::Model

  attr_reader :title, :artist

  @@songs = []

  class << self
     def create(params = {})
        @@songs << Song.new(params)
     end
  end
  def initialize(opts={})
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
Song.create title: "titlu2" , artist: "artist2"
