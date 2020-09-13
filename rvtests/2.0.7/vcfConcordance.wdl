version 1.0

task VcfConcordance {
  command <<<
    vcfConcordance
  >>>
  output {
    File out_stdout = stdout()
  }
}