version 1.0

task CleanUpPeakFilepl {
  command <<<
    cleanUpPeakFile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}