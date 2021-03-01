version 1.0

task Defaultscfg {
  command <<<
    defaults_cfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}