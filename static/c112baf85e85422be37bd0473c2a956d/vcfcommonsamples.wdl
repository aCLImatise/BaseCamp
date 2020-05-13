version 1.0

task Vcfcommonsamples {
  input {
    String? vcfVcfFile
    String? vcfVcfFile
  }
  command <<<
    vcfcommonsamples \
      ~{vcfVcfFile} \
      ~{vcfVcfFile}
  >>>
}