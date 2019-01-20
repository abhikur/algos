def fill(array, from, till)
	new_array = [];
	while from <= till do
		new_array.push(array[from])
		from += 1
	end
	new_array
end

def merge(array, p, q, r)
	low_half = fill(array, p, q)
	high_half = fill(array, q+1, r)
	i = j = 0; k = p
	while i < low_half.size && j < high_half.size do
		if low_half[i] <= high_half[j]
			array[k] = low_half[i]
			i+=1
		else
			array[k] = high_half[j]
			j+=1
		end
		k+=1
	end
	while i < low_half.size
		array[k] = low_half[i]
		k+=1
		i+=1
	end
	while j < high_half.size do
		array[k] = high_half[j]
		j+=1
		k+=1
	end
end

def merge_sort(array, p, r)
	q = (p+r)/2.floor
	if p < r
		merge_sort(array, p, q)
		merge_sort(array, q+1, r)
		merge(array, p, q, r)
	end
end