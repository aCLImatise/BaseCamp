version 1.0

task GraphAligner {
  command <<<
    GraphAligner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}