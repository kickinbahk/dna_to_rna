require 'spec_helper'

# This is the file that is to be tested. You should change the name here and in the spec_helper

# The Complements from DNA (left) to RNA (right)
# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

class Complement
  def of_dna(dna_string)
    dna_string_array = dna_string.upcase.chars
    rna_string_array = []
    
    dna_string_array.map do |element|
      raise ArgumentError, "Invalid Input" unless ['G','C','T','A'].include?(element)
    end
    
    dna_string_array.each do |char|

      case
      when char == 'G'
        char.gsub!('G','C')
      when char == 'C'
        char.gsub!('C','G')
      when char == 'T'
        char.gsub!('T','A')
      when char == 'A'
        char.gsub!('A','U')
      end
      rna_string_array.push(char)
    end
    rna_string_array.join
  end
end


