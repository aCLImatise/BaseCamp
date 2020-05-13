version 1.0

task FastaUtilsUidOUTPUTFILE {
  input {
    String? optionsOptions
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    fasta-utils uid OUTPUT_FILE \
      ~{optionsOptions} \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}