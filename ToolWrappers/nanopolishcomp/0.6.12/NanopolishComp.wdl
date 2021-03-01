version 1.0

task NanopolishComp {
  command <<<
    NanopolishComp
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanopolishcomp:0.6.12--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}