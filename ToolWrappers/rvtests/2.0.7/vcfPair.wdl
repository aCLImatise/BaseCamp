version 1.0

task VcfPair {
  command <<<
    vcfPair
  >>>
  output {
    File out_stdout = stdout()
  }
}