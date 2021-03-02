version 1.0

task Ps2ps2Inputps {
  command <<<
    ps2ps2 input_ps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}