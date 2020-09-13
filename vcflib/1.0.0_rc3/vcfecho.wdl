version 1.0

task Vcfecho {
  command <<<
    vcfecho
  >>>
  output {
    File out_stdout = stdout()
  }
}