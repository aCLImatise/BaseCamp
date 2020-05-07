version 1.0

task Json2gffMongodbGFFFILE {
  input {
    String? optionsOptions
    String? inputInputFile
    String? gffGffFile
  }
  command <<<
    json2gff mongodb GFF_FILE \
      ~{optionsOptions} \
      ~{inputInputFile} \
      ~{gffGffFile}
  >>>
}