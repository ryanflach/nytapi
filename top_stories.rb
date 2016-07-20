require 'faraday'
require 'json'
require './key'

class TopStories
  attr_reader :category

  VALID_CATEGORIES = %w(home opinion world national politics upshot nyregion
                        business technology science health sports arts books
                        movies theater sundayreview fashion tmagazine food travel
                        magazine realestate automobiles obituaries insider)

  def initialize(category)
    @category = category.downcase.strip
  end

  def process_request
    if valid_category?
      return_headlines
    else
      puts "Invalid category. Please select from: #{VALID_CATEGORIES}"
    end
  end

  def fetch_data
    Faraday.get("https://api.nytimes.com/svc/topstories/v2/#{category}.json?api-key=#{NYTIMES_KEY}")
  end

  def parse_data
    JSON.parse(fetch_data.body, object_class: OpenStruct)
  end

  def collect_headlines
    parse_data.results.map do |story|
      {title: story.title, author: story.byline, published: story.published_date, abstract: story.abstract, url: story.url}
    end
  end

  def return_headlines
    collect_headlines.each do |story|
      puts "Title: #{story[:title]}"
      puts "\t#{story[:author]}"
      puts "Published: #{story[:published]}"
      puts story[:abstract]
      puts "#{story[:url]}\n\n"
    end
  end

  def valid_category?
    VALID_CATEGORIES.include?(category)
  end
end

if __FILE__ == $0
  top_story = TopStories.new(ARGV[0])
  top_story.process_request
end
