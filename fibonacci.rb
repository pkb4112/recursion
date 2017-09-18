def fibs(n)
  nums = []
  (n).times do |n|
	if n < 2
	  nums << n
	else
      nums << nums[n-1]+nums[n-2]
	end
  end
  return nums
end



def fibs_rec(n)
	if n==0 || n==1
		return n 
	end

	fibs_rec(n-1)+fibs_rec(n-2)
end

def fibs_rec2(n)
	
		return [] if n<= 0
		return [1] if n == 1
		return [1,1] if n ==2


		fibs_rec2(n-1) << fibs_rec2(n-1)[-1]+fibs_rec2(n-1)[-2]
end



#puts fibs(6)
p fibs_rec(5)
p fibs_rec2(5)


