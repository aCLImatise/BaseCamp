version 1.0

task Vcfhetcount {
  command <<<
    vcfhetcount
  >>>
  output {
    File out_stdout = stdout()
  }
}