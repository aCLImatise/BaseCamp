version 1.0

task Discocfg {
  command <<<
    disco_cfg
  >>>
  output {
    File out_stdout = stdout()
  }
}