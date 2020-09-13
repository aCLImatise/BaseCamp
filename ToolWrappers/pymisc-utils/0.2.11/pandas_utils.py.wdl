version 1.0

task PandasUtilspy {
  command <<<
    pandas_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}