version 1.0

task Ps2epsiSwitches {
  command <<<
    ps2epsi switches
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}