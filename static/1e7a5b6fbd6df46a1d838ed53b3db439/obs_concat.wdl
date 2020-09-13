version 1.0

task Obsconcat {
  command <<<
    obs_concat
  >>>
  output {
    File out_stdout = stdout()
  }
}