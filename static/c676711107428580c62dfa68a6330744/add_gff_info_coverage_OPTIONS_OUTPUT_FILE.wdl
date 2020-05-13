version 1.0

task AddGffInfoCoverageOPTIONSOUTPUTFILE {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    add-gff-info coverage OPTIONS OUTPUT_FILE \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}