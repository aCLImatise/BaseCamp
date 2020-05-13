version 1.0

task Vcfinfo2qual {
  input {
    String? keyKey
    String? vcfVcfFile
  }
  command <<<
    vcfinfo2qual \
      ~{keyKey} \
      ~{vcfVcfFile}
  >>>
}