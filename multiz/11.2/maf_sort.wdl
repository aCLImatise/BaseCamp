version 1.0

task MafSort {
  command <<<
    maf_sort
  >>>
  output {
    File out_stdout = stdout()
  }
}