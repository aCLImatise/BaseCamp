version 1.0

task Vcffixup {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcffixup \
      ~{vcfVcfFile}
  >>>
}