version 1.0

task TransLiGIteration {
  command <<<
    TransLiG_iteration
  >>>
  output {
    File out_stdout = stdout()
  }
}