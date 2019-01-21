def swap(array, index1, index2)
	temp = array[index1]
	array[index1] = array[index2]
	array[index2] = temp
end

def partition(array, p, r)
	q = p
	for j in p...r
		if array[j] <= array[r]
			swap(array, q, j)
			q+=1
		end
	end
	swap(array, q, r)
	return q;
end

def quick_sort(array, p, r)
	if p < r
		q = partition(array, p, r)
		quick_sort(array, p, q-1)
		quick_sort(array, q+1, r)
	end
end