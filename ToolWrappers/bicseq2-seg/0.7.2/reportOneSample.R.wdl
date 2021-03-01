version 1.0

task ReportOneSampleR {
  command <<<
    reportOneSample_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}