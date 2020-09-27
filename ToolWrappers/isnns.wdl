version 1.0

task Isnns {
  command <<<
    isnns
  >>>
  output {
    File out_stdout = stdout()
  }
}