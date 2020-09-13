version 1.0

task Vcfnoindels {
  command <<<
    vcfnoindels
  >>>
  output {
    File out_stdout = stdout()
  }
}