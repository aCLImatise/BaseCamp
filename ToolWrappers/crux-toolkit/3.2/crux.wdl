version 1.0

task Crux {
  command <<<
    crux
  >>>
  output {
    File out_stdout = stdout()
  }
}