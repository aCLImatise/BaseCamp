version 1.0

task ChainMergeSort {
  command <<<
    chainMergeSort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}