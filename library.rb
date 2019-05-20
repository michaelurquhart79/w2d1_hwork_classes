class Library
  # attr_reader(:books)
  # attr_accessor()

  def initialize(books_array)
    @books_array = books_array
  end

  def books
    return @books_array
  end

  def get_book_instance(book_title)
    for book in @books_array
      if book_title == book[:title]
        return book
      end
    end
  end

  # Create a method that takes in a book title and returns only the rental details for that book.
  def rental_details_for_title(book_title)
    # book = @library1.get_book_instance(book_title)
    # return book[:rental_details]
    # CAN'T WORK OUT HOW TO CALL THE PREVIOUS METHOD TO GET BOOK INSTANCE
    for book in @books_array
      if book_title == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_new_book(book_title)
    new_book_hash = {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books_array.push(new_book_hash)
  end

  def change_rental_details(book_title, borrower, ret_date)
    for book in @books_array
      if book_title == book[:title]
        book[:rental_details][:student_name] = borrower
        book[:rental_details][:date] = ret_date
      end
    end
  end

end
