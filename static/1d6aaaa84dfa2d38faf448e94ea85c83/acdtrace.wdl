version 1.0

task Acdtrace {
  command <<<
    acdtrace
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}