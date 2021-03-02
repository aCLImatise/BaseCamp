version 1.0

task RnazOutputSortpl {
  command <<<
    rnazOutputSort_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}