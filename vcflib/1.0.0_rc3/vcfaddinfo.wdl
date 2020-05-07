version 1.0

task Vcfaddinfo {
  input {
    String? vcfVcfFile
    String? vcfVcfFile
  }
  command <<<
    vcfaddinfo \
      ~{vcfVcfFile} \
      ~{vcfVcfFile}
  >>>
}