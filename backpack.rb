class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    pack_clothing
    pack_gym_shoes
    pack_lunch
  end

  def pack_clothing

    weather = @attributes[:weather]

    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end

  end

  def pack_gym_shoes
    day_of_week = @attributes[:day_of_week]

    # Ensure gym shoes are added to backpack if it's a gym day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

  end

  def pack_lunch
    day_of_week = @attributes[:day_of_week]

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end

  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
