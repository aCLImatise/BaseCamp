version 1.0

task Pedwipe {
  command <<<
    pedwipe
  >>>
  output {
    File out_stdout = stdout()
  }
}