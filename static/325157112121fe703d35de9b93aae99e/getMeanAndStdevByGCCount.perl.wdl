version 1.0

task GetMeanAndStdevByGCCountperl {
  command <<<
    getMeanAndStdevByGCCount_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}