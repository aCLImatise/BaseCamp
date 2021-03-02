version 1.0

task Ijview {
  command <<<
    ijview
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}