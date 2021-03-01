version 1.0

task Trycycler {
  command <<<
    trycycler
  >>>
  runtime {
    docker: "quay.io/biocontainers/trycycler:0.4.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}