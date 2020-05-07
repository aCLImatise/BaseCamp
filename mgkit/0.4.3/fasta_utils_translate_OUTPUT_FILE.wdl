version 1.0

task FastaUtilsTranslateOUTPUTFILE {
  input {
    String? optionsOptions
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    fasta-utils translate OUTPUT_FILE \
      ~{optionsOptions} \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}