version 1.0

task ScipUtilspy {
  command <<<
    scip_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}