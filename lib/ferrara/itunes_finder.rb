module Ferrara
  class ItunesFinder
    def initialize
      @endpoint = "https://itunes.apple.com/search"
      @media = "media=tvShow"
      @entity = "entity=tvEpisode"
      @attr = "attribute=tvSeasonTerm"
    end

    def fetch(show, season, episode)
      term = "?term=" + build_term(show, season)
      url = @endpoint + [term, @media, @entity, @attr].join('&')

      response = HTTParty.get(URI::escape(url))
      results = response['results']

      result = results.find{|r| r['trackNumber'] == episode}
      if result
        result['trackViewUrl']
      else
        "Not available"
      end
    end

    private
    def build_term(show, season)
      "#{show} season #{season}"
    end
  end
end