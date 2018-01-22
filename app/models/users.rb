#users have many books through checkouts


class User

  @@all = []

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  #######----CREATION METHODS----#######

  def checkout_book(book_instance)
    Checkout.new(book_instance, self)
  end


  #######----INFO METHODS----#######

  def self.average_age
    ages_array = self.all.map {|user| user.age}
    ages_array.inject {|sum, n| sum + n}/ages_array.length
  end

  


end
