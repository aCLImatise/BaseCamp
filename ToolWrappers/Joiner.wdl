version 1.0

task Joiner {
  command <<<
    Joiner
  >>>
  output {
    File out_stdout = stdout()
  }
}