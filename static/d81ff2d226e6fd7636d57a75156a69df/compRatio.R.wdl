version 1.0

task CompRatioR {
  command <<<
    compRatio_R
  >>>
  output {
    File out_stdout = stdout()
  }
}