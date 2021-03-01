version 1.0

task Configconf {
  command <<<
    config_conf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}