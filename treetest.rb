require_relative 'tools.rb'
include Tools

count = 3

puts "Введите, пожалуйста, количество этажей елки: "
floors = gets.chomp.to_i
puts "Введите, пожалуйста, путь к файлу для сохранения: "
filePath = gets.chomp
​
for i in 1..floors
  if i == 1
    var = i
    Tools.fillCurrentFloor(var, floors + 50, count, filePath)
    count += 1
  else
    var += 2
    Tools.fillCurrentFloor(var, floors + 50, count, filePath)
    count += 1
  end
end
​
Tools.treeBase(2, floors + 50, filePath)