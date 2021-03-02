version 1.0

task AggregateContigOverlapsByBinpl {
  command <<<
    aggregateContigOverlapsByBin_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}