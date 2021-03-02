version 1.0

task SplitFqo {
  command <<<
    split_fq_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}