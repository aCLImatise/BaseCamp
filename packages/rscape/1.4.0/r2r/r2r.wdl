version 1.0

task R2r {
  command <<<
    r2r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}