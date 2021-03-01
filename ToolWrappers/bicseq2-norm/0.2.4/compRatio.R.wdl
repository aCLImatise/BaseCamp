version 1.0

task CompRatioR {
  command <<<
    compRatio_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}