version 1.0

task Gomergesh {
  command <<<
    gomerge_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}