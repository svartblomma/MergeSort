
NUM = 100.freeze
array = Array.new
array=NUM.times.map{ Random.rand(100) } 


def merge_sort array
	
	return array if array.size == 1
	mid = array.length/2
	left = merge_sort(array.shift(mid))
	right = merge_sort(array.shift(array.size))

	until left.empty? && right.empty? do
		if !left.empty? && right.empty?
			array << left.shift
		elsif left.empty? && !right.empty?
			array << right.shift
		else
			left.first > right.first ? array << right.shift : array << left.shift
		end
	end

	array
end
t1 = Time.now
merge_sort array
t2 = Time.now
delta = t2 - t1
puts "Heap sort complete in #{delta * 1000 }ms for #{NUM} items"