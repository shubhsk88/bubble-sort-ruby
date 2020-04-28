def bubble_sort(arr)
  len = arr.length
  (0...len).each do |i|
    (i + 1...len).each do |j|
      next unless arr[i] > arr[j]

      swap = arr[i]
      arr[i] = arr[j]
      arr[j] = swap
    end
  end
  arr
end

result = bubble_sort([4, 3, 78, 2, 0, 2])

p result
