version 1.0

task Vcfnull2ref {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfnull2ref \
      ~{vcfVcfFile}
  >>>
}