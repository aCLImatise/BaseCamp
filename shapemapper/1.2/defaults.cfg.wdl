version 1.0

task Defaultscfg {
  command <<<
    defaults_cfg
  >>>
  output {
    File out_stdout = stdout()
  }
}