def SumFile(filename)
	infile = File.open(filename)
	if infile != 0
		numberArray = infile.read(infile.size).split(/\r\n/)
			
		sum = 0
		numberArray.each do |number|
			sum += number.to_i
		end
		
		print sum
	end
end

SumFile("numbers.txt")
