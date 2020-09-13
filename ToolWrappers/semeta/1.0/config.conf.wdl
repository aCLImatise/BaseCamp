version 1.0

task Configconf {
  command <<<
    config_conf
  >>>
  output {
    File out_stdout = stdout()
  }
}