version 1.0

task AggregateBinDepthspl {
  command <<<
    aggregateBinDepths_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}