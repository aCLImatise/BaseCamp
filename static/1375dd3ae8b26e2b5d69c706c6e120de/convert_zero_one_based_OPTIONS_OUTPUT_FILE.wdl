version 1.0

task ConvertZeroOneBasedOPTIONSOUTPUTFILE {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    convert_zero_one_based OPTIONS OUTPUT_FILE \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}