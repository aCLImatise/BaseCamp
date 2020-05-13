version 1.0

task Json2gffMongodbINPUTFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? gffGffFile
  }
  command <<<
    json2gff mongodb INPUT_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{gffGffFile}
  >>>
}