version 1.0

task MplUtilspy {
  command <<<
    mpl_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}