require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup


    @book1 = {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "25/05/19"
        }
      }
    @book2 = {
        title: "catch_22",
        rental_details: {
         student_name: "Mike",
         date: "19/05/19"
        }
      }

    @initial_books = [ @book1, @book2 ]


    @library1 = Library.new(@initial_books)

  end

  # Create a getter for the books
  def test_get_books
    assert_equal(@initial_books, @library1.books)
  end

  # Create a method that takes in a book title and returns all of the information about that book.
  def test_get_book_instance
    book_by_title = @library1.get_book_instance("catch_22")
    assert_equal(@book2, book_by_title)
  end

  # Create a method that takes in a book title and returns only the rental details for that book.
  def test_rental_details_for_title
    rental_details = @library1.rental_details_for_title("lord_of_the_rings")
    assert_equal({student_name: "Jeff", date: "25/05/19"}, rental_details)
  end

  # Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)


  def test_add_new_book
    @library1.add_new_book("ready_player_one")
    book_count = @library1.books.count
    assert_equal(3, book_count)
  end

  # Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

  def test_change_rental_details
    @library1.change_rental_details("catch_22", "Steve", "05/06/19")
    expected_hash = {
      title: "catch_22",
      rental_details: {
       student_name: "Steve",
       date: "05/06/19"
      }
    }
    assert_equal(expected_hash, @library1.books[1])
  end

end
