version 1.0

task Pycompleter2 {
  command <<<
    pycompleter2
  >>>
  output {
    File out_stdout = stdout()
  }
}