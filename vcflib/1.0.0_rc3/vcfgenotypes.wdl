version 1.0

task Vcfgenotypes {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfgenotypes \
      ~{vcfVcfFile}
  >>>
}