version 1.0

task Vcfnosnps {
  command <<<
    vcfnosnps
  >>>
  output {
    File out_stdout = stdout()
  }
}