version 1.0

task Json2gffMongodbOPTIONSINPUTFILE {
  input {
    String? gffGffFile
  }
  command <<<
    json2gff mongodb OPTIONS INPUT_FILE \
      ~{gffGffFile}
  >>>
}