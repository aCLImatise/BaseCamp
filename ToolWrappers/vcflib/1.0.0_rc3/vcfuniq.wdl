version 1.0

task Vcfuniq {
  command <<<
    vcfuniq
  >>>
  output {
    File out_stdout = stdout()
  }
}