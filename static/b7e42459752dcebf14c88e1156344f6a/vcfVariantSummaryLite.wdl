version 1.0

task VcfVariantSummaryLite {
  command <<<
    vcfVariantSummaryLite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}