class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
	
	words = str.split

	words.each_with_index do |word, index|
		if word.count("a-zA-Z") > 4
			if word.start_with?(/[A-Z]/)
			  words[index] = word.sub!(/(^[a-zA-Z0-9_']*)/, "Marklar")
			else
			  words[index] = word.sub!(/(^[a-zA-Z0-9_']*)/, "marklar")
			end
	  	end
	end

	newstring = words.join(' ')
	
	return newstring


  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    
    array = Array[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352]
    
	idx = 0
	total = 0
	while idx < nth
	  if array[idx] % 2 == 0  
		total += array[idx]
	  end
	  idx += 1
	end

    return total
    
  end

end
