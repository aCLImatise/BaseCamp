version 1.0

task HeadPolishes {
  command <<<
    headPolishes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}