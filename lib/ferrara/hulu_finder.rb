module Ferrara
  class HuluFinder
    def initialize
      @endpoint = "http://www.hulu.com/sapi_us/search/video"
      @link = "http://www.hulu.com/watch/"
    end

    def fetch(show, season, episode)
      query = "?query=" + build_query(show, season, episode)
      url = @endpoint + query

      response = HTTParty.get(URI::escape(url))
      record = response['data'][0]
      
      @link + record['video']['id'].to_s if record
    end

    private
    def build_query(show, season, episode)
      "show:\"#{show}\" season:#{season} episode:#{episode} video_type:episode"
    end
  end
end