version 1.0

task Prot2codonFASTA file {
  input {
    String? multiMultiFastaOrStockholmAlignment
    String? fastFastAFile
  }
  command <<<
    prot2codon FASTA file \
      ~{multiMultiFastaOrStockholmAlignment} \
      ~{fastFastAFile}
  >>>
}