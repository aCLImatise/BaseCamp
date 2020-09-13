version 1.0

task Vcfmultiwayscripts {
  command <<<
    vcfmultiwayscripts
  >>>
  output {
    File out_stdout = stdout()
  }
}