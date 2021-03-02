version 1.0

task CollectGridssMetricsAndExtractFullReads {
  command <<<
    CollectGridssMetricsAndExtractFullReads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}