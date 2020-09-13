version 1.0

task Col1 {
  command <<<
    col1
  >>>
  output {
    File out_stdout = stdout()
  }
}