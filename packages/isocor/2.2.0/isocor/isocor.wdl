version 1.0

task Isocor {
  command <<<
    isocor
  >>>
  output {
    File out_stdout = stdout()
  }
}