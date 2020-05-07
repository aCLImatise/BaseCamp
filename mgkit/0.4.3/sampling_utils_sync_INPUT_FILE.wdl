version 1.0

task SamplingUtilsSyncINPUTFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    sampling-utils sync INPUT_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}