version 1.0

task Sandbag {
  command <<<
    sandbag
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}