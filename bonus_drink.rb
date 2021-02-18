loop do
  $total = 0

  def bottle
    a = gets.to_i
    b = 0
    c = 0

    $buy = a
    $total = 0

    loop do
      b = a/3
      c = a%3

      if a<3
        $total = $total + 3*b
        a = b + c
      break
      else
        $total = $total + 3*b
        a = b + c
      end

    end

    $total = $total + a

    if $total == 0
      puts "If you bought #{$buy} bottles,You can't drink a bottle.\n"
    elsif $buy == 1
      puts "If you bought #{$buy} bottles,You can drink one bottle.\n"
    else
      puts "If you bought #{$buy} bottles,You can drink #{$total} bottles.\n"
    end

  end

  print "How many bottles did you buy at first?(type number)    "

  bottle

end
