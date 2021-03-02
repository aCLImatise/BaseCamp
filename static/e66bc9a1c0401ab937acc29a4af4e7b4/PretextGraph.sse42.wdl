version 1.0

task PretextGraphsse42 {
  command <<<
    PretextGraph_sse42
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}