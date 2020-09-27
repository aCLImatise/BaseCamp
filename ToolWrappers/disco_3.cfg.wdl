version 1.0

task Disco3cfg {
  command <<<
    disco_3_cfg
  >>>
  output {
    File out_stdout = stdout()
  }
}