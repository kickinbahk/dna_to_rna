require_relative '../app/dna_to_rna.rb'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT, but in pagers and files
  config.tty  = true

  # Use preferred formatter by switching the symbol
  config.formatter = :documentation # :progress, :html, :textmate
  
end


