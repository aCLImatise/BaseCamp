version 1.0

task MmPbsaStatisticspl {
  command <<<
    mm_pbsa_statistics_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}