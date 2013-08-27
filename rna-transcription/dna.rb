class DNA
  attr_reader :dna

  NUCLEOTIDES = ['A', 'C', 'G', 'T']

  def initialize(dna)
    @dna = dna
  end

  def count(nucleotide)
    raise ArgumentError.new 'Invalid nucleotide' unless NUCLEOTIDES.include? nucleotide
    dna.chars.count nucleotide
  end

  def nucleotide_counts
    NUCLEOTIDES.each_with_object(Hash.new(0)).each do |nucleotide, count|
      count[nucleotide] = count nucleotide
    end
  end
end