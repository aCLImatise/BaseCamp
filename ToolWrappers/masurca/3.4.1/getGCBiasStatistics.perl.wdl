version 1.0

task GetGCBiasStatisticsperl {
  command <<<
    getGCBiasStatistics_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}