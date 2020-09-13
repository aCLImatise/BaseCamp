version 1.0

task GetPospl {
  command <<<
    getPos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}