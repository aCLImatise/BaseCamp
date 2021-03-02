version 1.0

task Spatypestxt {
  command <<<
    spatypes_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/spatyper:0.3.3--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}