version 1.0

task PsassAnalyzeOPTIONSOUTPUTFILE {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    psass analyze OPTIONS OUTPUT_FILE \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}