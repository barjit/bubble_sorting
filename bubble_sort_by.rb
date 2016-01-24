def bubble_sort_by(arr)
  size = arr.length                                     #set size to length of array
  while size > 0                                        #begin while loop
    i = 1                                               #set counter variable to 1
    while i < size                                      #begin second while loop
      if yield(arr[i-1], arr[i]) < 0                    #if statement with yield (see below)
        arr[i-1], arr[i] = arr[i], arr[i-1]             #swap elements if the if statement is 
      end                                               #true. end if statement
      i += 1                                            #add 1 to counter variable
    end                                                 #end second while loop
    size -= 1                                           #subtract 1 from size variable
  end                                                   #end first while loop
  arr                                                   #return modified array
end                                                     #end method

bubble_sort_by([“hi”, “hello”, “hey”]) do |left, right| #call method with array and block
right.length - left.length
end

#when the yield statement is invoked, it places the block called with the method in its
#place. So, "left" is substituted by arr[i-1], and "right" is substituted by
#arr[i], so what the code on line 6 would look like is:
#if arr[i].length - arr[i-1].length < 0