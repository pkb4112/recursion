#Mergesort - Recursion

#def psuedo-sort(array)
#  if array.length < 1
      #return
   #end
   # sort left half
   #slice.array(left)
   #sort right half
   #slice.array(right)
   #merge the two halves
   #array join smallest left, larger right
#end

def mergesort(elements)
	#Base Case 
  return elements if elements.size == 1

  #Divide 
  mid   = elements.size / 2
  left  = elements[0, mid]
  right = elements[mid, elements.size]
   
  left_sorted = mergesort(left)
  right_sorted = mergesort(right)

   #Conquer
   merge(left_sorted,right_sorted)
end


def merge(left,right)
  sorted = []

  #puts "trying to merge #{left} and #{right}"

  until left.size == 0 || right.size == 0 

  	if left.first <= right.first  
  	  sorted << left.first   #could use left.shift 
  	  left.delete_at(0)
    else 
    	sorted << right.first
    	right.delete_at(0)
    end
  end

  return sorted.concat(left).concat(right)

  end

	

array = [1,3,2,4,13,25,67,2,35]
print mergesort(array)