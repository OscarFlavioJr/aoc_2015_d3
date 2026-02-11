sx = 0
sy = 0

rx = 0
ry = 0

casas_visitadas = {}
casas_visitadas[[0, 0]] = true

File.read("input.txt").each_char.with_index do |char, i|
  
  if i.even?
    x = sx
    y = sy
  else
    x = rx
    y = ry
  end

  case char
  when '^'
    y += 1
  when 'v'
    y -= 1
  when '>'
    x += 1
  when '<'
    x -= 1
  end

  if i.even?
    sx = x
    sy = y
  else
    rx = x
    ry = y
  end

  casas_visitadas[[x, y]] = true
end

puts casas_visitadas.size
