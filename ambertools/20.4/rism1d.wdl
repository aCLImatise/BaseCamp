version 1.0

task Rism1d {
  command <<<
    rism1d
  >>>
  output {
    File out_stdout = stdout()
  }
}