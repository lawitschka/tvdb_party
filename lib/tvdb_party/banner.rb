module TvdbParty
  class Banner
    attr_accessor :banner_type, :banner_type2, :season, :path, :thumbnail_path, :language, :rating, :rating_count

    def initialize(options={})
      @banner_type = options["BannerType"]
      @banner_type2 = options["BannerType2"]
      @season = options["Season"]
      @path = options["BannerPath"]
      @language = options["Language"]
      @rating = options["Rating"].to_f
      @rating_count = options["RatingCount"].to_i
    end

    def url
      "http://thetvdb.com/banners/" + @path
    end

    def thumb_url
      "http://thetvdb.com/banners/_cache/" + @path
    end

  end
end