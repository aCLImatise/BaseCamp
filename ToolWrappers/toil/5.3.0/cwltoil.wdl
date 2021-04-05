version 1.0

task Cwltoil {
  command <<<
    cwltoil
  >>>
  runtime {
    docker: "quay.io/biocontainers/toil:5.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}