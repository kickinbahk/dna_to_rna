require 'spec_helper'

# Test syntax should have a style like:
# Describe Class do
#  it "does somthing here" do
#    class == Class.new
#    expect(class.some_method).to be_false
#  end
# end

describe Complement do
  before do
    @complement = Complement.new
  end

  it "tests the complement of guanine is cytosine" do
    expect(@complement.of_dna('G')).to eq('C')
  end
  it "tests the complement of cytosine is guanine" do
    expect(@complement.of_dna('C')).to eq('G')
  end
  it "tests the complement of thymine is adenine" do
    expect(@complement.of_dna('T')).to eq('A')
  end
  it "tests the complement of adenine is uracil" do
    expect(@complement.of_dna('A')).to eq('U')    
  end
  it "tests long string valid output" do
    expect(@complement.of_dna('GGCTAATACCG')).to eq('CCGAUUAUGGC')
  end

  it "raises error if rna complement is given" do
    expect{ @complement.of_dna('U') }.to raise_error(ArgumentError)
  end
  it "raises error if partially invalid input is given" do
    expect{ @complement.of_dna('GGCTXXXACCG') }.to raise_error(ArgumentError)
  end
  it "raises error if fully invalid input is given" do
    expect{ @complement.of_dna('XXX') }.to raise_error(ArgumentError)
  end
  it "does not raise error if lower case valid complement is given" do
    expect{ @complement.of_dna('gcta') }.to_not raise_error
  end  
end

