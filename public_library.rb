#  Public library coding challenge for Code Fellows
#  Marge Rosen  June 24, 2013
#
#  Library - Add shelves to Library, report number of shelves 
#  and report all books
class Library
    @@shelf_count = 0

  def initialize(shelf, title)
    @shelf = shelf
    @title = title
    @@shelf_count += 1
  end
	
	def self.number_of_shelves 
    @@shelf_count
  end 

  def description
    puts "Shelves of #{@shelf} - Books: #{@title}"
  end
end

fiction = Library.new("Fiction", "Ender's Game")
non_fiction = Library.new("Non-fiction", "Cracking the Coding Interview")
reserves = Library.new ("Books on reserve", "Running Lean")

fiction.description
non_fiction.description
reserves.description

puts "Total shelves in library: #{Library.number_of_shelves}" 

# Shelves - Add shelves and books to shelves.
# Report total number of shelves and books. 
class Shelves
    @@shelf_count = 0
    @@book_count = 0

  def initialize(shelf, book)
    @shelf = shelf
    @book = book
    @@shelf_count += 1
    @@book_count += 1
  end
  
  def self.number_of_shelves 
    @@shelf_count
  end 

  def self.number_of_books 
    @@book_count
  end 

  def description
    puts "Shelves of #{@shelf} - Books: #{@book}"
  end
end

fiction = Shelves.new("Fiction", "Ender's Game")
non_fiction = Shelves.new("Non-fiction", "Cracking the Coding Interview")
reserves = Shelves.new ("Books on reserve", "Running Lean")

fiction.description
non_fiction.description
reserves.description

puts "Total shelves in library: #{Shelves.number_of_shelves}" 
puts "Total books in library: #{Shelves.number_of_books}" 

#  Books - Report total books, use "enshlf" and "unshelf" methods
#  to control what shelf the book is sitting on 
class Book
    @@book_count = 0

  def initialize(title, author)
    @title = title
    @author = author
    @@book_count += 1
  end

  def self.number_of_books 
    @@book_count
  end

  def enshelf
    puts "Book is available: #{@title} by #{@author}"   
  end

  def unshelf
    puts "Book is reserved: #{@title} by #{@author}"  
  end      
end

available = Book.new("Ender's Game", "Orson Scott Card")
reserved = Book.new("Cracking the Coding Interview", "Gayle Laakmann McDowell")
available2 = Book.new("Catching Fire", "Suzanne Collins")

available.enshelf
reserved.unshelf
available2.enshelf

puts "Total number of books: #{Book.number_of_books}"

