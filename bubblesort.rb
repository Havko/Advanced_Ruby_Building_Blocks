def bubble_sort(array)
	
	n = array.length
	loop do
		swapped = false
		
		(n-1).times  do |x|
			
		if (array[x] <=> array[x+1]) == 1
	
		array[x], array[x+1] = array[x+1], array[x]
		swapped = true
		
	end
	end
	break if not swapped
	end
	array
end


def bubble_sort_by(array)
	
	n = array.length
	loop do
		swapped = false
		
		(n-1).times  do |x|
			
		if yield(array[x], array[x+1]) < 0
	
		array[x], array[x+1] = array[x+1], array[x]
		swapped = true
		
	end
	end
	break if not swapped
	end
	array
	
end

p bubble_sort_by(["hi", "hello", "hey"]) { |left, right| right.length - left.length }
	