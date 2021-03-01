version 1.0

task Filter1hits {
  command <<<
    filter_1hits
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}