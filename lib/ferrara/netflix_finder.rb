module Ferrara
  class NetflixFinder
    def initialize
      @endpoint = "http://odata.netflix.com/Catalog/Titles"
      @format = "$format=json"
      @limit = "$top=1"
    end

    def fetch(show, season, episode)
      filter = "?$filter=" + build_filter(show, season, episode)
      url = @endpoint + [filter, @format, @limit].join('&')

      response = HTTParty.get(URI::escape(url))
      record = response['d'][0]

      record['TinyUrl'] if record && record['Instant']['Available']
    end

    private
    def build_filter(show, season, episode)
      escaped_show_name = show.sub("'", "''").sub("&", "%26")
      name = "#{escaped_show_name}: Season"
      shortname = "S#{season}:E#{episode} "

      "substringof('#{name}', Name) and substringof('#{shortname}', ShortName) and Type eq 'Episode'"
    end
  end
end