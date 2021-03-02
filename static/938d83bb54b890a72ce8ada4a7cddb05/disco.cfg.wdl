version 1.0

task Discocfg {
  command <<<
    disco_cfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}