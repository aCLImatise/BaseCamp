version 1.0

task FastaUtilsTranslateOPTIONSOUTPUTFILE {
  input {
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    fasta-utils translate OPTIONS OUTPUT_FILE \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}