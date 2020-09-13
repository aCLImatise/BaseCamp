version 1.0

task Combine {
  command <<<
    combine
  >>>
  output {
    File out_stdout = stdout()
  }
}