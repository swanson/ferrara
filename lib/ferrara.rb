require "httparty"

require "ferrara/version"
require "ferrara/hulu_finder"
require "ferrara/netflix_finder"

module Ferrara
  def self.fetch(show, season, episode)
    netflix = Ferrara::NetflixFinder.new
    hulu = Ferrara::HuluFinder.new

    { 
      :netflix => netflix.fetch(show, season, episode),
      :hulu => hulu.fetch(show, season, episode)
    }
  end
end
