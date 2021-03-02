version 1.0

task Svist4get {
  command <<<
    svist4get
  >>>
  runtime {
    docker: "quay.io/biocontainers/svist4get:1.2.24--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}