class BonusDrink

  def self.total_count_for(amount)
    new(amount).total_count
  end

  def initialize(a, b = 0, c = 0, total = 0)
    @a = a
    @b = b
    @c = c
    @buy = a
    @total = total
  end

  def total_count
    loop do
      @b = @a/3
      @c = @a%3

      if @a<3
        @total = @total + 3*@b
        @a = @b + @c
        @total = @total + @a
      break
      else
        @total = @total + 3*@b
        @a = @b + @c
      end
    end
    @total
  end


end
