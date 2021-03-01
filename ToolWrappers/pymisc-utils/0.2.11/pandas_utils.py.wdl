version 1.0

task PandasUtilspy {
  command <<<
    pandas_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}