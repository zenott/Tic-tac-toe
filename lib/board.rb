class Board
  def initialize
    @values = Array.new(3) { |row| Array.new(3) { |col| row * 3 + col + 1 } }
  end

  def update(move, sign)
    @values[(move - 1) / 3.floor][(move - 1) % 3] = sign
  end

  def get_grid
    [
      '',
      "   #{@values[0][0]} | #{@values[0][1]} | #{@values[0][2]} ",
      '  ———|———|———',
      "   #{@values[1][0]} | #{@values[1][1]} | #{@values[1][2]} ",
      '  ———|———|———',
      "   #{@values[2][0]} | #{@values[2][1]} | #{@values[2][2]} ",
      ''
    ].join("\n")
  end
end
