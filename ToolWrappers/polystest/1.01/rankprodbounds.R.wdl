version 1.0

task RankprodboundsR {
  command <<<
    rankprodbounds_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}