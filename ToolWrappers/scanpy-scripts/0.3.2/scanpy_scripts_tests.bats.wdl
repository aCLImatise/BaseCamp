version 1.0

task Scanpyscriptstestsbats {
  command <<<
    scanpy_scripts_tests_bats
  >>>
  runtime {
    docker: "quay.io/biocontainers/scanpy-scripts:0.3.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}