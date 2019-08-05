module Tools
  ​ def treeBase(var, width, filePath)
    for i in 1..var
      File.open(filePath, "a") do |file|
        file.puts " " * (width / 2) + "ТTTTT"
      end
    end
  end
  def fillCurrentFloor(branchCount, width, count, filePath)
    File.open(filePath, "a") do |file|
      file.print " " * ((width - branchCount + 5) / 2)
    end
    if branchCount > 1
      if count % 2 == 0
        File.open(filePath, "a") do |file|
          file.print "@"
        end
        File.open(filePath, "a") do |file|
          file.puts "*" * branchCount
        end
      else
        File.open(filePath, "a") do |file|
          file.print "*" * branchCount
        end
        File.open(filePath, "a") do |file|
          file.puts "@"
        end
      end
    else
      File.open(filePath, "a") do |file|
        file.puts "W" * branchCount
      end
      File.open(filePath, "a") do |file|
        file.print " " * ((width - branchCount + 5) / 2)
      end
      File.open(filePath, "a") do |file|
        file.puts "*" * branchCount
      end
    end
  end
end