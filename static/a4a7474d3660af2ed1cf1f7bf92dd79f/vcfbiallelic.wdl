version 1.0

task Vcfbiallelic {
  command <<<
    vcfbiallelic
  >>>
  output {
    File out_stdout = stdout()
  }
}