version 1.0

task Vcfcleancomplex {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfcleancomplex \
      ~{vcfVcfFile}
  >>>
}