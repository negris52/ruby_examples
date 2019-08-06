module Tools
  def treeBase(var, width, tempstr)
    for i in 1..var
      tempstr += " " * (width / 2) + "ТTTTT"
      tempstr += "\n"
    end
    return tempstr
  end

  def fillCurrentFloor(branchCount, width, count, tempstr)
    tempstr += " " * ((width - branchCount + 5) / 2)
    if branchCount > 1
      if count % 2 == 0
        tempstr += "@"
        tempstr += "*" * branchCount
        tempstr += "\n"
      else
        tempstr += "*" * branchCount
        tempstr += "@"
        tempstr += "\n"
      end
    else
      tempstr += "W" * branchCount
      tempstr += "\n"
      tempstr += " " * ((width - branchCount + 5) / 2)
      tempstr += "*" * branchCount
      tempstr += "\n"
    end
  end
end