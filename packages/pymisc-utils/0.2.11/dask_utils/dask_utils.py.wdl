version 1.0

task DaskUtilspy {
  command <<<
    dask_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}