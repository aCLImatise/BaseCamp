version 1.0

task ArticFastaHeaderHeader {
  input {
    File? filenameFilename
    String? headerHeader
  }
  command <<<
    artic_fasta_header header \
      ~{filenameFilename} \
      ~{headerHeader}
  >>>
}