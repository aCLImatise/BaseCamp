version 1.0

task Monocle3 {
  command <<<
    monocle3
  >>>
  output {
    File out_stdout = stdout()
  }
}