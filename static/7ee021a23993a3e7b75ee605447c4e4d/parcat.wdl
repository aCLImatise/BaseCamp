version 1.0

task Parcat {
  command <<<
    parcat
  >>>
  output {
    File out_stdout = stdout()
  }
}