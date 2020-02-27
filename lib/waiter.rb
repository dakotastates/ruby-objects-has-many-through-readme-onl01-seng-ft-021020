class Waiter
attr_accessor:name, :years_of_experience
@@all = []
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end
  
  def self.all
    @@all
  end
end