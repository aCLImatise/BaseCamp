version 1.0

task Vcfhethomratio {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfhethomratio \
      ~{vcfVcfFile}
  >>>
}