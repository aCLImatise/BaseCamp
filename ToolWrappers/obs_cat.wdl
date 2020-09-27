version 1.0

task Obscat {
  command <<<
    obs_cat
  >>>
  output {
    File out_stdout = stdout()
  }
}