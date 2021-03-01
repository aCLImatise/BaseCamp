version 1.0

task Deepsvr {
  command <<<
    deepsvr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}