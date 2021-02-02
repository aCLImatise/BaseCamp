version 1.0

task Mglobenergy {
  command <<<
    mglobenergy
  >>>
  output {
    File out_stdout = stdout()
  }
}