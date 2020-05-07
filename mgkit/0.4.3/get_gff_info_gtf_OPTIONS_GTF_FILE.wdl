version 1.0

task GetGffInfoGtfOPTIONSGTFFILE {
  input {
    String? gffGffFile
    String? gtfGtfFile
  }
  command <<<
    get-gff-info gtf OPTIONS GTF_FILE \
      ~{gffGffFile} \
      ~{gtfGtfFile}
  >>>
}