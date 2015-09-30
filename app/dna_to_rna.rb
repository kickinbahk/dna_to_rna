require 'spec_helper'

# This is the file that is to be tested. You should change the name here and in the spec_helper

# The Complements from DNA (left) to RNA (right)
# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

class Complement
  def of_dna(dna_string)
    dna_string.upcase!
    
    
    dna_string.each_char do |element|
      raise ArgumentError, "Invalid Input" unless ['G','C','T','A'].include?(element)
    end
    
    dna_string.tr('GCTA','CGAU')
  end
end


