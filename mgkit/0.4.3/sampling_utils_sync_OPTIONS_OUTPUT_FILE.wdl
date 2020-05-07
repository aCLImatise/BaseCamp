version 1.0

task SamplingUtilsSyncOPTIONSOUTPUTFILE {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    sampling-utils sync OPTIONS OUTPUT_FILE \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}