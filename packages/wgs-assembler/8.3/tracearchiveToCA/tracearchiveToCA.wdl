version 1.0

task TracearchiveToCA {
  command <<<
    tracearchiveToCA
  >>>
  output {
    File out_stdout = stdout()
  }
}