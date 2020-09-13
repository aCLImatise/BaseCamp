version 1.0

task ChainMergeSort {
  command <<<
    chainMergeSort
  >>>
  output {
    File out_stdout = stdout()
  }
}