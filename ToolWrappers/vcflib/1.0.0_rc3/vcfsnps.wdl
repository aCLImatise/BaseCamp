version 1.0

task Vcfsnps {
  command <<<
    vcfsnps
  >>>
  output {
    File out_stdout = stdout()
  }
}