version 1.0

task BuildSummarypl {
  command <<<
    buildSummary_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  output {
    File out_stdout = stdout()
  }
}