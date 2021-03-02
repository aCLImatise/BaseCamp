version 1.0

task CollectGridssMetricsAndExtractSVReads {
  command <<<
    CollectGridssMetricsAndExtractSVReads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}