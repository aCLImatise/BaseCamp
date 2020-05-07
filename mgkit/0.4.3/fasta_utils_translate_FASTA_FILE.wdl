version 1.0

task FastaUtilsTranslateFASTAFILE {
  input {
    String? optionsOptions
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    fasta-utils translate FASTA_FILE \
      ~{optionsOptions} \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}