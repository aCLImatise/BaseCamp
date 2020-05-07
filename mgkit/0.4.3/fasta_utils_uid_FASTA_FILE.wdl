version 1.0

task FastaUtilsUidFASTAFILE {
  input {
    String? optionsOptions
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    fasta-utils uid FASTA_FILE \
      ~{optionsOptions} \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}