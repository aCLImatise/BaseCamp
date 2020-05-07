version 1.0

task FastqUtilsConvertOPTIONSFASTAFILE {
  input {
    String? fastFastQFile
    String? fastFastAFile
  }
  command <<<
    fastq-utils convert OPTIONS FASTA_FILE \
      ~{fastFastQFile} \
      ~{fastFastAFile}
  >>>
}