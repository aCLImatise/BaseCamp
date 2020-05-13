version 1.0

task Vcfunphase {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfunphase \
      ~{vcfVcfFile}
  >>>
}