

class Author

  @@all = []

  attr_accessor :name, :age, :books

  def initialize(name, age)
    @name = name
    @age = age

    @@all << self
  end

  def self.all
    @@all
  end

#######----CREATION METHODS----#######

  def write_book(name, number_of_pages)
    book_instance = Book.new(name, self, number_of_pages)
  end


#######----INFO METHODS----##########

  def books
    #returns books author has written

    Book.all.select {|book| book.author == self}

  end

  def self.most_written
    #returns author with most written books

    author_array = Book.all.map {|book| book.author}
    author_array.max_by {|author| author_array.count(author)}
  end

  def avg_age_of_reader
    self.books

  end



end
