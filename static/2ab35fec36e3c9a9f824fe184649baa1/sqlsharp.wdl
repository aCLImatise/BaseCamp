version 1.0

task Sqlsharp {
  command <<<
    sqlsharp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}