version 1.0

task TestTrtoolssh {
  command <<<
    test_trtools_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/trtools:4.0.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}