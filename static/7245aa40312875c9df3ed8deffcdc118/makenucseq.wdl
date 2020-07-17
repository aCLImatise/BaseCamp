version 1.0

task Makenucseq {
  input {
    Boolean? codon_file
    Boolean? amount
    Boolean? length
  }
  command <<<
    makenucseq \
      ~{true="-codonfile" false="" codon_file} \
      ~{true="-amount" false="" amount} \
      ~{true="-length" false="" length}
  >>>
  parameter_meta {
    codon_file: "codon      Optional codon usage file. Nucleotide sequences will be created as triplets matching the frequencies in the file, with the end trimmed to be in the correct reading frame."
    amount: "integer    [100] Number of sequences created (Integer 1 or more)"
    length: "integer    [100] Length of each sequence (Integer 1 or more)"
  }
}