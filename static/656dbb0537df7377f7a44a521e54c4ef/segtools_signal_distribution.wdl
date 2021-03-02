version 1.0

task Segtoolssignaldistribution {
  command <<<
    segtools_signal_distribution
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}