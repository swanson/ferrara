require "httparty"

require "ferrara/version"
require "ferrara/netflix_finder"

module Ferrara
  def self.fetch(show, season, episode)
    netflix = Ferrara::NetflixFinder.new

    { 
      :netflix => netflix.fetch(show, season, episode),
      :hulu => "Not available",
      :itunes => nil
    }
  end
end
