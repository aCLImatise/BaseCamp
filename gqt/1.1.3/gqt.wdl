version 1.0

task Gqt {
  command <<<
    gqt
  >>>
  output {
    File out_stdout = stdout()
  }
}