class Person

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_width, :pant_length
  
  def initialize(attributes)
    attributes.each{|key, value| self.send(("#{key}="), value)}
  end

end