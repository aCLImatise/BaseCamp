version 1.0

task CleanUpPeakFilepl {
  command <<<
    cleanUpPeakFile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}