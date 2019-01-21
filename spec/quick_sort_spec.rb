require __dir__+'/../quick_sort.rb'

describe 'quick_sort' do
	it 'should sort the provided array' do
		array = [456,98,12,64,33,87,654,9,6,345,75,99,78,43,90,63,27,559,446,794,796,53,6890,336,785,806,446,7,74567,84,788]
		sorted_array = [6,7,9,12,27,33,43,53,63,64,75,78,84,87,90,98,99,336,345,446,446,456,559,654,785,788,794,796,806,6890,74567]
		
		quick_sort(array, 0, array.size - 1)

		expect(array).to eq(sorted_array)
	end
end 