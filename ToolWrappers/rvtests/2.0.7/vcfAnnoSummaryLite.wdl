version 1.0

task VcfAnnoSummaryLite {
  command <<<
    vcfAnnoSummaryLite
  >>>
  output {
    File out_stdout = stdout()
  }
}