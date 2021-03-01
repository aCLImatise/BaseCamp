version 1.0

task VcfAnnoSummaryLite {
  command <<<
    vcfAnnoSummaryLite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}