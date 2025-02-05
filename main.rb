class MovieDatabase
  def initialize
    @movies = []
    puts "Welcome to Movieverse"
    
    # Add some test movies to ensure categories are available
    add_movie('The Conjuring', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 'Horror')
    add_movie('A Nightmare on Elm Street', 'Teenagers in a small town are being stalked and killed in their dreams by Freddy Krueger, a maniacal killer with a burnt face.', 'Horror')
    add_movie('Avengers: Endgame', 'After the devastating events of "Avengers: Infinity War," the Avengers assemble once more to reverse the damage caused by Thanos.', 'Marvel')
    add_movie('Spider-Man: No Way Home', 'Peter Parker seeks Doctor Strange\'s help to erase the public knowledge of his identity as Spider-Man, resulting in unintended consequences.', 'Marvel')
    add_movie('Spirited Away', 'A young girl named Chihiro becomes trapped in a magical world and must find a way to save her parents while uncovering a strange new world.', 'Anime')
    add_movie('My Neighbor Totoro', 'Two young sisters move to the countryside and discover magical creatures, including the giant, friendly Totoro.', 'Anime')
    add_movie('The Dark Knight', 'Batman faces the Joker, a criminal mastermind who seeks to undermine Gotham City, testing the limits of Batman\'s moral code.', 'Action')
    add_movie('Mad Max: Fury Road', 'In a post-apocalyptic wasteland, Max teams up with Furiosa, a warrior on a mission to save a group of women from a tyrannical ruler.', 'Action')
    add_movie('Inception', 'A skilled thief who enters the dreams of others to steal secrets from their subconscious is tasked with planting an idea in someone’s mind.', 'Sci-Fi')
    add_movie('The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'Sci-Fi')
  end

  def run
    loop do
      puts "1. Search movie list by title"
      puts "2. Search movie list by category"
      puts "3. Display all movie lists"
      puts "4. Exit"
      print "Choose any one option: "
      option = gets.chomp.to_i

      case option
      when 1
        search_movie_by_title
      when 2
        search_movie_by_category
      when 3
        display_all_movies
      when 4
        puts "Goodbye"
        break
      else
        puts "Invalid option. Please choose again."
      end
    end
  end

  def search_movie_by_title
    print "Enter movie title to search: "
    title = gets.chomp.downcase
    results = @movies.select { |movie| movie.title.downcase.include?(title) }

    if results.empty?
      puts "No movies found with that title."
    else
      results.each { |movie| puts movie }
    end
  end

  def search_movie_by_category
    # Step 1: Get available categories from the movie list
    categories = @movies.map { |movie| movie.category }.uniq

    # Step 2: Display categories to the user
    if categories.empty?
      puts "No categories available."
      return
    end

    puts "Available categories:"
    categories.each_with_index do |category, index|
      puts "#{index + 1}. #{category}"
    end

    # Step 3: Ask the user to select a category by number
    print "Enter the number of the category to search: "
    category_number = gets.chomp.to_i

    # Step 4: Validate category selection
    if category_number < 1 || category_number > categories.length
      puts "Invalid choice, please select a valid category number."
      return
    end

    # Step 5: Get the selected category and display movies in that category
    selected_category = categories[category_number - 1]
    results = @movies.select { |movie| movie.category.downcase == selected_category.downcase }

    if results.empty?
      puts "No movies found in the #{selected_category} category."
    else
      puts "Movies in the #{selected_category} category:"
      results.each { |movie| puts movie }
    end
  end

  def display_all_movies
    if @movies.empty?
      puts "No movies in the database."
    else
      @movies.each { |movie| puts movie }
    end
  end

  def add_movie(title, description, category)
    movie = Movie.new(title, description, category)
    @movies << movie
  end
end
