class DNA
  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  def min_length(dna_compare)
    [dna_compare.length, dna.length].min
  end

  def hamming_distance(dna_compare)
    distance = 0

    dna_compare.chars.each_with_index do |char, index|
      break if index >= min_length(dna_compare)

      distance += 1 if char != dna[index]
    end

    distance
  end
end