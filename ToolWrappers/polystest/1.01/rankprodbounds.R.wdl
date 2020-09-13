version 1.0

task RankprodboundsR {
  command <<<
    rankprodbounds_R
  >>>
  output {
    File out_stdout = stdout()
  }
}