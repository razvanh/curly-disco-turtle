class Turtle

  attr_reader :direction
  attr_reader :current_position

  def initialize
    @direction = 'N'
    @current_position = [0, 0]
  end
  def go(command)

    if (['L','R'].include?(command))
      update_direction(command)

    elsif (command.is_a?(Integer) && command >0)
      move(command)
    end

    @current_position
  end

  private

  def move(steps)

    case @direction
      when 'N'
        @current_position[1] += steps
      when 'E'
        @current_position[0] += steps
      when 'S'
        @current_position[1] -= steps
      else
        @current_position[0] -= steps
    end

  end

  def update_direction(direction)

    case @direction
      when 'N'
        direction == 'L' ? @direction = 'W' : @direction ='E'
      when 'E'
        direction == 'L' ? @direction = 'N' : @direction ='S'
      when 'S'
        direction == 'L' ? @direction = 'E' : @direction ='W'
      else
        direction == 'L' ? @direction = 'S' : @direction ='N'
    end

  end

end