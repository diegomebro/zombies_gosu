class Zombie_momia < Zombie
def initialize(x, y)
    @x = x
    @y = y
    @directions = ["left", "right", "up", "down"]
    @direction = "right"
    @image = Gosu::Image.new("zombie_momia.png")
    @steps = 0
  end
  def walk
    if @direction == "right"
      @x += 2
    elsif @direction == "left"
      @x -= 2
    elsif @direction == "up"
      @y -= 2
    elsif @direction == "down"
      @y += 2
    end

    if @steps >= 25
      @direction = @directions.sample
      @steps = 0
    end

    @steps += 2

  end
end