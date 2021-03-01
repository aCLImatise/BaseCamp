version 1.0

task Setuppy {
  command <<<
    setup_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/cami-opal:1.0.9--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}