#books have many users through checkouts


class Book

  @@all = []

  attr_accessor :name, :author, :number_of_pages

  def initialize(name, author, number_of_pages)
    @name = name
    @author = author
    @number_of_pages = number_of_pages
    @@all << self
  end

  def self.all
    @@all
  end

  #######----CREATION METHODS----#######



  #######----INFO METHODS----#######

  def users
    #book_a.users
    #returns all the users that checked out this book

    checkout_array = Checkout.all.select {|checkout| checkout.book == self}
    checkout_array.map {|checkout| checkout.user}
  end

end
