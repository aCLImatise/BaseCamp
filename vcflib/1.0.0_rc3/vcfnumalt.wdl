version 1.0

task Vcfnumalt {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfnumalt \
      ~{vcfVcfFile}
  >>>
}