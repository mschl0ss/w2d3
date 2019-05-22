class Array

  def self.my_uniq(array)
    result = []
    array.each do |ele|
      result << ele unless result.include? ele
    end
    result
  end

  def two_sum
    result = []

    (0...length-1).each do |i|
      (i+1...length).each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end

    result
  end

  def my_transpose
    result = Array.new(length){Array.new(length)}
    for row in (0...length)
      for col in (0...length)
        result[col][row] = self[row][col]
      end
    end
    result
  end

  def stock_picker
    buy = 0
    sell = 1
    for bday in (0..length - 2)
      for sday in (bday + 1 .. length - 1)
        if self[sday] - self[bday] > self[sell] - self[buy]
          buy = bday
          sell = sday
        end
      end
    end
    return [buy, sell]
  end
end

class Towers
  attr_reader :t1,:t2,:t3, :towers

  def initialize
    @t1 = [1,2,3]
    @t2 = []
    @t3 = []
    @towers = [@t1,@t2,@t3]

  end

  def move
  # def move(start,destination)

    # raise 'no discs there, bro' if start.empty?
    # destination.unshift(start.shift)
  end

  def win?

  end

end