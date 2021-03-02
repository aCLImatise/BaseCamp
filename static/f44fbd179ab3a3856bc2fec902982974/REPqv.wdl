version 1.0

task REPqv {
  command <<<
    REPqv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}