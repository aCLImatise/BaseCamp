version 1.0

task Tkpp {
  command <<<
    tkpp
  >>>
  output {
    File out_stdout = stdout()
  }
}