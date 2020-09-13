version 1.0

task GetLengthStatisticsForKUnitigsFileperl {
  command <<<
    getLengthStatisticsForKUnitigsFile_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}