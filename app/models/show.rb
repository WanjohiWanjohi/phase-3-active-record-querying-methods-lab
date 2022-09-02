require 'pry'
class Show < ActiveRecord::Base
    def self.highest_rating
       result = Show.maximum(:rating)
       return result
    end
    def self.most_popular_show
        result = self.highest_rating 
        Show.find_by("rating" ,result )
    end
    def self.lowest_rating
        result = Show.minimum(:rating)
        return result 
    end
    def self.least_popular_show
        Show.order(:rating).first()
    end
    def self.ratings_sum
        Show.sum(:rating)
    end
    def self.popular_shows
        Show.where("rating > 5")
    end
    def self.shows_by_alphabetical_order
    Show.order(:name)
    end
end