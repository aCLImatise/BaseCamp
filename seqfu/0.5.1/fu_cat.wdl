version 1.0

task Fucat {
  command <<<
    fu_cat
  >>>
  output {
    File out_stdout = stdout()
  }
}