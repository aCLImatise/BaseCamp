version 1.0

task GetGCBiasStatisticsperl {
  command <<<
    getGCBiasStatistics_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}