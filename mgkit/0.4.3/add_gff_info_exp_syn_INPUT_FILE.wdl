version 1.0

task AddGffInfoExpSynINPUTFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    add-gff-info exp_syn INPUT_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}