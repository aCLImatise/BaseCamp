version 1.0

task MafSort {
  command <<<
    maf_sort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}