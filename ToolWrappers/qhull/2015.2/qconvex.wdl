version 1.0

task Qconvex {
  command <<<
    qconvex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}