version 1.0

task Xparmed {
  command <<<
    xparmed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}