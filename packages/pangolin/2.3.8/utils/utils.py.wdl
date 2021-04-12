version 1.0

task Utilspy {
  command <<<
    utils_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.8--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}