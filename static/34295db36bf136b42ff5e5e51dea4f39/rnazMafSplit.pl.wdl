version 1.0

task RnazMafSplitpl {
  command <<<
    rnazMafSplit_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}