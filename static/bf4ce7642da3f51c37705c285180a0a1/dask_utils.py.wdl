version 1.0

task DaskUtilspy {
  command <<<
    dask_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}