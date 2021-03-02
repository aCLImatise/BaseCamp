version 1.0

task Omero {
  command <<<
    omero
  >>>
  runtime {
    docker: "quay.io/biocontainers/omero-py:5.9.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}