version 1.0

task VcfSummary {
  command <<<
    vcfSummary
  >>>
  output {
    File out_stdout = stdout()
  }
}