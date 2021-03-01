version 1.0

task NcrfSortpy {
  command <<<
    ncrf_sort_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}