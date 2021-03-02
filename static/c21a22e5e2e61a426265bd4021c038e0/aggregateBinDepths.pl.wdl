version 1.0

task AggregateBinDepthspl {
  command <<<
    aggregateBinDepths_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}