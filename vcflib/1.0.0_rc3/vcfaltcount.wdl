version 1.0

task Vcfaltcount {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfaltcount \
      ~{vcfVcfFile}
  >>>
}