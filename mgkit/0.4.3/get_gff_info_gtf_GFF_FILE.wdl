version 1.0

task GetGffInfoGtfGFFFILE {
  input {
    String? optionsOptions
    String? gffGffFile
    String? gtfGtfFile
  }
  command <<<
    get-gff-info gtf GFF_FILE \
      ~{optionsOptions} \
      ~{gffGffFile} \
      ~{gtfGtfFile}
  >>>
}