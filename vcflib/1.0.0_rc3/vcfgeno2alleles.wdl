version 1.0

task Vcfgeno2alleles {
  command <<<
    vcfgeno2alleles
  >>>
  output {
    File out_stdout = stdout()
  }
}