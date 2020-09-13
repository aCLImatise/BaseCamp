version 1.0

task VcfSummaryLite {
  command <<<
    vcfSummaryLite
  >>>
  output {
    File out_stdout = stdout()
  }
}