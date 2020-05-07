version 1.0

task Prot2codonMultiFASTA or Stockholm alignment {
  input {
    String? fastFastAFile
  }
  command <<<
    prot2codon multi-FASTA or Stockholm alignment \
      ~{fastFastAFile}
  >>>
}