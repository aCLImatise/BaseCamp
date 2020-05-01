version 1.0

task Vcfclassify {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfclassify \
      ~{vcfVcfFile}
  >>>
}