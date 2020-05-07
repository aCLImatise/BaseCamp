version 1.0

task AddGffInfoExpSynOUTPUTFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    add-gff-info exp_syn OUTPUT_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}