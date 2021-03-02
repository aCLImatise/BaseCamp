version 1.0

task GetPospl {
  command <<<
    getPos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}