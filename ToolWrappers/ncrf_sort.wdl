version 1.0

task NcrfSort {
  command <<<
    ncrf_sort
  >>>
  output {
    File out_stdout = stdout()
  }
}