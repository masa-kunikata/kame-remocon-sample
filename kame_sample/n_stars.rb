COL_NUMS = 4

def n_star(n)
  row = n / COL_NUMS
  col = n % COL_NUMS
  
  t = 360 / n
  len = 16 / n

  pen_up
  move_to(col * 16, row * 16)
  turn_left(90 + t)

  pen_down
  n.times do
    forward len
    turn_right t
    forward len
    turn_left(2 * t)
  end

  pen_up
  move_to(col * 16, row * 16)
  turn_right(90 - t)
end

(5..16).each do |n|
  n_star(n)
end
