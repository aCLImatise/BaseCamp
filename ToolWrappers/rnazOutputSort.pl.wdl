version 1.0

task RnazOutputSortpl {
  command <<<
    rnazOutputSort_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}