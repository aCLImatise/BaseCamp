version 1.0

task VcfVariantSummaryLite {
  command <<<
    vcfVariantSummaryLite
  >>>
  output {
    File out_stdout = stdout()
  }
}