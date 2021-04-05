version 1.0

task Renet2 {
  command <<<
    renet2
  >>>
  runtime {
    docker: "quay.io/biocontainers/renet2:1.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}