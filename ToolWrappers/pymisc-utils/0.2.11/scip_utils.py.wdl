version 1.0

task ScipUtilspy {
  command <<<
    scip_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}