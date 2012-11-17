require "httparty"

require "ferrara/version"
require "ferrara/hulu_finder"
require "ferrara/netflix_finder"
require "ferrara/itunes_finder"

module Ferrara
  def self.fetch_links(show, season, episode)
    netflix = Ferrara::NetflixFinder.new
    hulu = Ferrara::HuluFinder.new
    itunes = Ferrara::ItunesFinder.new

    { 
      :netflix => netflix.fetch(show, season, episode),
      :hulu => hulu.fetch(show, season, episode),
      :itunes => itunes.fetch(show, season, episode)
    }
  end
end
