version 1.0

task VcfSummaryLite {
  command <<<
    vcfSummaryLite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}