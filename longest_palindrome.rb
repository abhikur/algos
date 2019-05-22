def longest_palindrome(str)
	str = preprocess(str)
	p = []
	for index in 0...str.size
		center = 0
		r = 0
		i_mirror = center - (index-center)

		if index_inbound(center, r)
			p[index] = [r-index, p[i_mirror]].min
		else
			p[index] = 0
		end

		while neighbours_are_palindrome?(str, index, p)
			p[index] += 1
		end

		if need_to_update_center?(r, p , index)
			r = index + p[index]
			center = index
		end
	end
	max_length = max_length_and_center(p)[0]
	center = max_length_and_center(p)[1]
	str.slice(center - max_length..center + max_length).tr('#', '')
end

def need_to_update_center?(r, p , index)
	r < (index + p[index])
end

def preprocess(str)
	'#' + str.split('').join('#') + '#'
end

def index_inbound(c, r)
	c < r
end

def neighbours_are_palindrome?(str, index, p)
	str[index + 1 + p[index]] == str[index - 1 - p[index]]
end

def max_length_and_center(p)
	max_length = 0
	center = 0
	for i in 0...p.length
		if max_length < p[i]
			max_length = p[i]
			center = i
		end
	end
	[max_length, center]
end