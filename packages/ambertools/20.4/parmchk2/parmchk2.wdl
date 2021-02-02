version 1.0

task Parmchk2 {
  command <<<
    parmchk2
  >>>
  output {
    File out_stdout = stdout()
  }
}