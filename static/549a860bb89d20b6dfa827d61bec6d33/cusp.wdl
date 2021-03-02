version 1.0

task Cusp {
  command <<<
    cusp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}