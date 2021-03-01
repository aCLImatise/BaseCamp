version 1.0

task NanopolishComp {
  command <<<
    NanopolishComp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}