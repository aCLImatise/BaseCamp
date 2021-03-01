version 1.0

task PolydNdS {
  command <<<
    polydNdS
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}