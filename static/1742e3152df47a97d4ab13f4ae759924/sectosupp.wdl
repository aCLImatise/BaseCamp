version 1.0

task Sectosupp {
  command <<<
    sectosupp
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamkit:16.07.26--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}