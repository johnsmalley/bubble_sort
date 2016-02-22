=begin

This program came from The Odin Project
http://www.theodinproject.com/ruby-programming/advanced-building-blocks

Build a method #bubble_sort that takes an array and returns a sorted array. 
It must use the bubble sort methodology (using #sort would be pretty pointless, 
wouldn't it?).
	
=end

sample_array = [4,3,78,2,0,2]

def bubble_sort(array)
	switch = true
	
	while switch do # keep going through the array until no more switches needed
		switch = false
		(array.length - 1).times do |i|
			if array[i] > array[i+1]
				# switches the elements in the array to get to the right order
				array[i+1],array[i] = array[i],array[i+1]
				# flags that a switch occured, so need go through array again
				switch = true 
			end
		end	
	end

	p array

end

bubble_sort(sample_array)

def bubble_sort_by(array)
	switch = true

	while switch do # keep going through the array until no more switches needed
		switch = false
		# p yield(array[0],array[1])
		(array.length - 1).times do |i|
			if (yield(array[i],array[i+1])) > 0
				array[i+1],array[i] = array[i],array[i+1]
				switch = true
			end
		end
	end

	p array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end
