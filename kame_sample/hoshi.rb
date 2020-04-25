turn_right 90
forward 72
turn_left 90

pen_down


len = 16

(5..100).each do |n|
  n.times do
    forward len
    turn_right (360 / n)
    forward len
    turn_left (360 / n * 2)
  end
end
