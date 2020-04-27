def bubble_sort(arr)
    len=arr.length
    for i in (0...len) do 
        for j in (i+1...len) do
            if(arr[i]>arr[j])
                swap=arr[i]
                arr[i]=arr[j]
                arr[j]=swap
            end
        end
    end
 return arr;
end 

result = bubble_sort([4,3,78,2,0,2])

p result