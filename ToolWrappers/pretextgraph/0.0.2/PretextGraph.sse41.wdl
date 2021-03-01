version 1.0

task PretextGraphsse41 {
  command <<<
    PretextGraph_sse41
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}