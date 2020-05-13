version 1.0

task GetGffInfoDbmGFFFILE {
  input {
    String? optionsOptions
    String? gffGffFile
  }
  command <<<
    get-gff-info dbm GFF_FILE \
      ~{optionsOptions} \
      ~{gffGffFile}
  >>>
}