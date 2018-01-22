#joiner class between book and user


class Checkout

  @@all = []

  attr_accessor :book, :user

  def initialize(book, user)
    @book = book
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

end
