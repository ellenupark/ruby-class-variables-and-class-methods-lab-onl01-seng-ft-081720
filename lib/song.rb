class Song
    attr_accessor :name, :artist, :genre

    @@count = 0

    @@genres = []

    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        count_of_genres = {}
        @@genres.each do | element |
            if count_of_genres.keys.include?(element)
                count_of_genres[element] += 1
            else
                count_of_genres[element] = 1
            end
        end
        count_of_genres
    end

    def self.artist_count
        count_of_artists = {}
        @@artists.each do | element |
            if count_of_artists.keys.include?(element)
                count_of_artists[element] += 1
            else
                count_of_artists[element] = 1
            end
        end
        count_of_artists
    end

end