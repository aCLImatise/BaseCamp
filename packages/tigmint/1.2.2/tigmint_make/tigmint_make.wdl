version 1.0

task Tigmintmake {
  command <<<
    tigmint_make
  >>>
  runtime {
    docker: "quay.io/biocontainers/tigmint:1.2.2--py_1"
  }
  output {
    File out_stdout = stdout()
  }
}