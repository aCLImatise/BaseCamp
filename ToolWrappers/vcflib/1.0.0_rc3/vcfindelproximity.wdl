version 1.0

task Vcfindelproximity {
  command <<<
    vcfindelproximity
  >>>
  output {
    File out_stdout = stdout()
  }
}