version 1.0

task Transterm {
  command <<<
    transterm
  >>>
  output {
    File out_stdout = stdout()
  }
}