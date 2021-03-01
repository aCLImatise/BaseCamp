version 1.0

task Combine {
  command <<<
    combine
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}