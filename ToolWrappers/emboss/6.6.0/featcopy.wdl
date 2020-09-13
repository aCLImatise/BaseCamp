version 1.0

task Featcopy {
  command <<<
    featcopy
  >>>
  output {
    File out_stdout = stdout()
  }
}