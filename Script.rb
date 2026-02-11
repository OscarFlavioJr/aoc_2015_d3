x = 0
y = 0

casas_visitadas = {}
casas_visitadas[[x, y]] = true

File.read("input.txt").each_char do |char|
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

  casas_visitadas[[x, y]] = true
end

puts casas_visitadas.size
