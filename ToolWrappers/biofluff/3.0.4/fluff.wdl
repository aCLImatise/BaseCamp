version 1.0

task Fluff {
  command <<<
    fluff
  >>>
  runtime {
    docker: "quay.io/biocontainers/biofluff:3.0.4--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}