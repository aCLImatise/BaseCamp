version 1.0

task CollectGridssMetricsAndExtractFullReads {
  command <<<
    CollectGridssMetricsAndExtractFullReads
  >>>
  output {
    File out_stdout = stdout()
  }
}