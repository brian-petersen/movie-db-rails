namespace :db do
  desc 'Populate some sample data from IMDB'
  task :populate => :environment do
    # IMDB movies
    puts 'Importing movies from IMDB'

    movie_ids = ["0095016", "0372784", "3498820", "2975590", "2948356", "1179933", "1431045"]
    movie_ids.each do |id|
      m = Imdb::Movie.new(id)

      title = m.title
      desc = m.plot
      poster_url = m.poster
      
      Movie.create title: title, description: desc, poster: URI.parse(poster_url)
    end
  end
end
