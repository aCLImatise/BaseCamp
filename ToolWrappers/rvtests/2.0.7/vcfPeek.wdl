version 1.0

task VcfPeek {
  command <<<
    vcfPeek
  >>>
  output {
    File out_stdout = stdout()
  }
}