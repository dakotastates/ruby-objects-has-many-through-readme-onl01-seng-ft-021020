class Waiter
attr_accessor:name, :years_of_experience
@@all = []
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
  end
  
  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end
  
  def best_tipper
    best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
    best_tipped_meal.customer
  end
  
  def self.all
    @@all
  end
end