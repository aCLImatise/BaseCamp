version 1.0

task CollectGridssMetricsAndExtractFullReads {
  command <<<
    CollectGridssMetricsAndExtractFullReads
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.11.0--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}