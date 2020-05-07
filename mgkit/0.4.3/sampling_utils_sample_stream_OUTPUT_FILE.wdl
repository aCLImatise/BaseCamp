version 1.0

task SamplingUtilsSampleStreamOUTPUTFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    sampling-utils sample_stream OUTPUT_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}