version 1.0

task NcrfSortpy {
  command <<<
    ncrf_sort_py
  >>>
  output {
    File out_stdout = stdout()
  }
}