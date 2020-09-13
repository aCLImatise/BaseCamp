version 1.0

task Disco2cfg {
  command <<<
    disco_2_cfg
  >>>
  output {
    File out_stdout = stdout()
  }
}