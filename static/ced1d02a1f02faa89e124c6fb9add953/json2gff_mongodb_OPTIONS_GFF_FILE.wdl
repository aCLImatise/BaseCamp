version 1.0

task Json2gffMongodbOPTIONSGFFFILE {
  input {
    String? inputInputFile
    String? gffGffFile
  }
  command <<<
    json2gff mongodb OPTIONS GFF_FILE \
      ~{inputInputFile} \
      ~{gffGffFile}
  >>>
}