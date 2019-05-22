require_relative '../longest_palindrome.rb'

describe 'longest_palindrome' do
	it 'should find the longest palindrome in the given string' do
		string = 'abaccab'

		expect(longest_palindrome(string)).to eq('baccab')
		expect(longest_palindrome('cbbd')).to eq('bb')
	end
end