version 1.0

task Pycompleter27 {
  command <<<
    pycompleter2_7
  >>>
  output {
    File out_stdout = stdout()
  }
}