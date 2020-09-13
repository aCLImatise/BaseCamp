version 1.0

task AggregateContigOverlapsByBinpl {
  command <<<
    aggregateContigOverlapsByBin_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}