version 1.0

task PsassAnalyzeOPTIONSINPUTFILE {
  input {
    String? outputOutputFile
  }
  command <<<
    psass analyze OPTIONS INPUT_FILE \
      ~{outputOutputFile}
  >>>
}