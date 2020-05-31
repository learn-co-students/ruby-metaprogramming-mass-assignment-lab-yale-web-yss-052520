class Person
  # Although not all of these variables will be initialized for each object, we can create getters and setters for them to facilitate mass assignment and a flexible initialize method that uses .send to invoke setter methods.
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  # We will use mass assignment to create a flexible/future-proof initialize method
  def initialize(attributes)
    # Uses iteration and the .send method to mass assign the value of each key/value pair to its associated key.
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end 
end