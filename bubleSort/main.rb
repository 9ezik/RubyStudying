def bubble_sort(arr)
  n = arr.length

  for i in 0..n-2 do
    for j in 0..n-i-2 do
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end

  arr
end

arr = [643, -4, 21, 0, 1, 9, 32, 3, 65]
sorted_arr = bubble_sort(arr)
puts sorted_arr.inspect