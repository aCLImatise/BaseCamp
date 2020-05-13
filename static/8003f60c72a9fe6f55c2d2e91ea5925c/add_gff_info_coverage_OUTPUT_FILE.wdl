version 1.0

task AddGffInfoCoverageOUTPUTFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    add-gff-info coverage OUTPUT_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}