version 1.0

task Miscpy {
  command <<<
    misc_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/panphlan:3.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}