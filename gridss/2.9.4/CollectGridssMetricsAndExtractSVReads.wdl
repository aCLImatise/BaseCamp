version 1.0

task CollectGridssMetricsAndExtractSVReads {
  command <<<
    CollectGridssMetricsAndExtractSVReads
  >>>
  output {
    File out_stdout = stdout()
  }
}