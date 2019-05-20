class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name( new_name )
    @name = new_name
  end

  def talk
    return 'I can talk!'
  end

  def say_favourite_language(fav_lang)
    return "I love #{fav_lang}"
  end
end
