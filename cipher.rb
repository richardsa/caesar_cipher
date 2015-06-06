puts "Enter your cipher string:"
text = gets.chomp
puts "Enter your cipher shift value"
shift = gets.chomp.to_i


def cipher(text, shift)
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  answer = []
  text.split("").each do |letter|
    if lower.include?(letter)
      #converts letter to ascii
      letter = letter.ord
      #adds shift value and subtracts "a" ascii value
      letter = (letter - 97) + shift
      #finds shift value with modulo to account keep char's case
      letter = letter % 26
      #returns proper ascii value
      letter += 97 
      #converts back to letter
      letter = letter.chr
      #pushes to answer array
      answer << letter
    elsif upper.include?(letter)
      letter = letter.ord
      letter = (letter - 65) + shift
      letter = letter % 26
      letter += 65
      letter = letter.chr
      answer << letter
    else
      answer << letter
    end
  end
  puts answer.join
end


cipher(text,shift)