version 1.0

task NcrfSort {
  command <<<
    ncrf_sort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}