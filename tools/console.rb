
require_relative '../run.rb'


a_one = Author.new("a_one", 27)
a_two = Author.new("a_two", 35)
a_three = Author.new("a_three", 26)
a_four = Author.new("a_four", 49)
a_five = Author.new("a_five", 63)
a_six = Author.new("a_six", 22)


#organized by authors
a_one.write_book("b_one", 200)
a_one.write_book("b_four", 421)
a_one.write_book("b_five", 60)

a_two.write_book("b_two", 150)
a_two.write_book("b_three", 623)

a_five.write_book("b_six", 216)

a_six.write_book("b_seven", 271)


#users
u_one = User.new("u_one", 15)
u_two = User.new("u_two", 18)
u_three = User.new("u_three", 20)
u_four = User.new("u_four", 35)
u_five = User.new("u_five", 50)

#books
b_one = Book.all[0]
b_two = Book.all[1]
b_three = Book.all[2]
b_four = Book.all[3]
b_five = Book.all[4]

u_one.checkout_book(b_one)
u_one.checkout_book(b_two)

u_two.checkout_book(b_three)

u_three.checkout_book(b_three)

u_four.checkout_book(b_three)

u_five.checkout_book(b_three)
u_five.checkout_book(b_five)

#grouped according to book
# u_one.checkout_book(b_one)

# u_one.checkout_book(b_two)

# u_two.checkout_book(b_three)
# u_three.checkout_book(b_three)
# u_four.checkout_book(b_three)
# u_five.checkout_book(b_three)

# u_five.checkout_book(b_five)









binding.pry
