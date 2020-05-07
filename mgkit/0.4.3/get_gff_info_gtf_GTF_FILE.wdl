version 1.0

task GetGffInfoGtfGTFFILE {
  input {
    String? optionsOptions
    String? gffGffFile
    String? gtfGtfFile
  }
  command <<<
    get-gff-info gtf GTF_FILE \
      ~{optionsOptions} \
      ~{gffGffFile} \
      ~{gtfGtfFile}
  >>>
}