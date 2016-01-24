def bubble_sort(arr)
  loop do                                     #begin loop
    swap = false                              #set swap to false
    size = arr.length                         #set size to length of array
    (size-1).times do |i|                     #iterate (size-1) times where "i" is the index variable
      if arr[i] > arr[i+1]                    #if the element on the left is bigger than the element on the right
        arr[i], arr[i+1] = arr[i+1], arr[i]   #swap the two compared elements
        swap = true                           #set swap to false
      end                                     #end if
    end                                       #end .times iterator
  break if !swap                              #break loop if swap is false
  end                                         #end loop
  arr                                         #return now modified array
end                                           #end method

bubble_sort([4,3,78,2,0,2])                   #call method

#When method is called, loop will begin. After swap and size are set, iterator will begin.
#i will iterate size-1 times through the array, (once for each element in the array -1).
#if any swaps happened during this initial iteration, swap is true thus the loop doesn't 
#break and so the iterator goes through the array again. Basically the loop carries on
#until the if statement condition is never met and the loop breaks because swap remains 
#false.
