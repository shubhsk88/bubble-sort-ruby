def bubble_sort_by(arr)
    len=arr.length
    for i in (0...len) do 
        for j in (i+1...len) do
            if(yield arr[i], arr[j])
                swap=arr[i]
                arr[i]=arr[j]
                arr[j]=swap
            end
        end
    end
 return arr;
end 

result = bubble_sort_by(["hi","hello","hey"]) do  |left, right| 
    left.length - right.length > 0
end

p result