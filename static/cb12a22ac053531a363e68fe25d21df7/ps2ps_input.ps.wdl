version 1.0

task Ps2psInputps {
  command <<<
    ps2ps input_ps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}