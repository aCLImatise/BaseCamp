version 1.0

task Autoreconfbak {
  command <<<
    autoreconf_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}