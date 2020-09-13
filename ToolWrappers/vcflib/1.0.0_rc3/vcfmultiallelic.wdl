version 1.0

task Vcfmultiallelic {
  command <<<
    vcfmultiallelic
  >>>
  output {
    File out_stdout = stdout()
  }
}