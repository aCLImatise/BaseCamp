version 1.0

task FastaUtilsUidOPTIONSOUTPUTFILE {
  input {
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    fasta-utils uid OPTIONS OUTPUT_FILE \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}