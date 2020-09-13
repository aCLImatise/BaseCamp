version 1.0

task Vcfjoincalls {
  command <<<
    vcfjoincalls
  >>>
  output {
    File out_stdout = stdout()
  }
}