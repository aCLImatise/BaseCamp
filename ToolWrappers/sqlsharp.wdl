version 1.0

task Sqlsharp {
  command <<<
    sqlsharp
  >>>
  output {
    File out_stdout = stdout()
  }
}