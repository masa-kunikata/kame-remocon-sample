COL_NUMS = 5

def n_star(n)
  row = (n / COL_NUMS).to_i
  col = (n % COL_NUMS).to_i
  
  t = 360 / n
  len = 80/n

  pen_up
  move_to(col * 70-150, row * 50-230)
  turn_left 90

  pen_down
  n.times do
    forward len
    turn_right t
    forward len
    turn_left(2 * t)
  end

  turn_right 90
end

(5..39).each do |n|
  n_star(n)
end
