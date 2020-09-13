version 1.0

task Cusp {
  command <<<
    _cusp
  >>>
  output {
    File out_stdout = stdout()
  }
}