class Exercise
  def rand7
    while (true)
      best, count = try_random7
      return best if count == 1
    end
  end

  def rand5
    rand(5) + 1
  end

  def try_random7
    best_value, max, occurrences = [0, 0, 0]
    1.upto(7) do |el|
      actual_rand5 = rand5
      occurrences += 1 if max == actual_rand5
      if max < actual_rand5
        best_value, max, occurrences = [el, actual_rand5, 1]
      end
    end
    return best_value, occurrences
  end
end
