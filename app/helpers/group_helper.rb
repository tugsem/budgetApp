module GroupHelper
  def getTotalValue(group)
    sum = 0
    group.entities.each do |entity|
      sum += entity.amount.to_i
    end
    p sum
  end
end
