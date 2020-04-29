def bubble_sort(arr)
  len = arr.length
  (0...len).each do |i|
    (i + 1...len).each do |j|
      next unless arr[i] > arr[j]

      arr[i], arr[j] = arr[j], arr[i]
    end
  end
  arr
end

test1 = bubble_sort([4, 3, 78, 2, 0, 2])

p test1

def bubble_sort_by(arr)
  len = arr.length
  (0...len).each do |i|
    (i + 1...len).each do |j|
      result = yield arr[i], arr[j]
      arr[i], arr[j] = arr[j], arr[i] if result.positive?
    end
  end
  arr
end

test2 = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

p test2
