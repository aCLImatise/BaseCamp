version 1.0

task Dbilogstrip {
  command <<<
    dbilogstrip
  >>>
  output {
    File out_stdout = stdout()
  }
}