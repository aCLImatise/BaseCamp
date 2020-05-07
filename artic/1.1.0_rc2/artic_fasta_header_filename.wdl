version 1.0

task ArticFastaHeaderFilename {
  input {
    String? headerHeader
  }
  command <<<
    artic_fasta_header filename \
      ~{headerHeader}
  >>>
}