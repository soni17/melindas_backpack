class Backpack

  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    @weather = @attributes[:weather]
    @day_of_week = @attributes[:day_of_week]
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

  # Ensure appropriate clothing is added to backpack
  def pack_clothing
    if @weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif @weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end

  # Ensure gym shoes are added to backpack if it's a gym day
  def pack_gym_shoes
    if @day_of_week == 'monday' || @day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  # Bring a packed lunch on all weekdays
  def pack_lunch
    if @day_of_week != 'saturday' && @day_of_week != 'sunday'
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
