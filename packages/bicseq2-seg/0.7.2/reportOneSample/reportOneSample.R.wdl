version 1.0

task ReportOneSampleR {
  command <<<
    reportOneSample_R
  >>>
  output {
    File out_stdout = stdout()
  }
}