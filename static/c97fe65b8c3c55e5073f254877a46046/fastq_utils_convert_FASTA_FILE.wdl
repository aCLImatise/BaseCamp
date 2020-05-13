version 1.0

task FastqUtilsConvertFASTAFILE {
  input {
    String? optionsOptions
    String? fastFastQFile
    String? fastFastAFile
  }
  command <<<
    fastq-utils convert FASTA_FILE \
      ~{optionsOptions} \
      ~{fastFastQFile} \
      ~{fastFastAFile}
  >>>
}