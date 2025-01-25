require_relative 'movie'
class MovieDatabase
  def initialize
    @movies=[]
    puts "Welcome to Movieverse"
  end

  def run
    loop do
      puts 1. Search movie list by title
      puts 2. Search movie list by category
      puts 3. display all movie lists
      puts 4. exit
      puts "Choose any one option:"
      option = gets.chomp.to_i
      
      case choice
      when 1
        #write method for search movie list by title
        def 
      when 2
        # write method for Search movie list by category
      when 3
        # write method for display all movie lists
      when 4
        puts "GoodBye"
      else
        puts "Invalid option. Please choose again."
      end
    end
  end

  def add_movie(title,description,category)
    movie = Movie.new(title,description,category)
    @movies << movie
  end

  movie_db = MovieDatabase.new

  movie_db.add_movie('The Conjuring', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'Horror')
  movie_db.add_movie('A Nightmare on Elm Street', 'Teenagers in a small town are being stalked and killed in their dreams by Freddy Krueger, a maniacal killer with a burnt face.', 'Horror')
  movie_db.add_movie('Avengers: Endgame', 'After the devastating events of "Avengers: Infinity War," the Avengers assemble once more to reverse the damage caused by Thanos.', 'Marvel')
  movie_db.add_movie('Spider-Man: No Way Home', 'Peter Parker seeks Doctor Strange\'s help to erase the public knowledge of his identity as Spider-Man, resulting in unintended consequences.', 'Marvel')
  movie_db.add_movie('Spirited Away', 'A young girl named Chihiro becomes trapped in a magical world and must find a way to save her parents while uncovering a strange new world.', 'Anime')
  movie_db.add_movie('My Neighbor Totoro', 'Two young sisters move to the countryside and discover magical creatures, including the giant, friendly Totoro.', 'Anime')
  movie_db.add_movie('The Dark Knight', 'Batman faces the Joker, a criminal mastermind who seeks to undermine Gotham City, testing the limits of Batman\'s moral code.', 'Action')
  movie_db.add_movie('Mad Max: Fury Road', 'In a post-apocalyptic wasteland, Max teams up with Furiosa, a warrior on a mission to save a group of women from a tyrannical ruler.', 'Action')
  movie_db.add_movie('Inception', 'A skilled thief who enters the dreams of others to steal secrets from their subconscious is tasked with planting an idea in someone’s mind.', 'Sci-Fi')
  movie_db.add_movie('The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'Sci-Fi')
end
