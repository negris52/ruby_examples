require_relative 'tools.rb'
include Tools

count = 3
tempstr = ""
str = ""

puts "Введите, пожалуйста, количество этажей елки: "
floors = gets.chomp.to_i
puts "Введите, пожалуйста, путь к файлу для сохранения: "
filePath = gets.chomp
for i in 1..floors
  if i == 1
    var = i
    str += Tools.fillCurrentFloor(var, floors + 50, count, tempstr)
    count += 1
  else
    var += 2
    str += Tools.fillCurrentFloor(var, floors + 50, count, tempstr)
    count += 1
  end
end
str += Tools.treeBase(2, floors + 50, tempstr)
begin
  File.open(filePath, "a") do |file|
    file.print str
  end
rescue StandardError => msg
  puts msg
end