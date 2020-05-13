version 1.0

task AddGffInfoPfamOPTIONSOUTPUTFILE {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    add-gff-info pfam OPTIONS OUTPUT_FILE \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}