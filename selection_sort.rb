def swap(array, i, j)
	temp = array[i]
	array[i] = array[j]
	array[j] = temp
end

def selection_sort(array)
	for i in 0...array.size
		min = array[i]
		min_num_index = i
		for j in i+1...array.size
			if array[j] < min
				min_num_index = j
				min = array[j]
			end
		end
		swap(array, i, min_num_index)
	end
end