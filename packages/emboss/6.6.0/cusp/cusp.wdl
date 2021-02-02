version 1.0

task Cusp {
  command <<<
    cusp
  >>>
  output {
    File out_stdout = stdout()
  }
}