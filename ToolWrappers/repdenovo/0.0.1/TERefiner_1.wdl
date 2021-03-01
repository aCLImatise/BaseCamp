version 1.0

task TERefiner1 {
  command <<<
    TERefiner_1
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}