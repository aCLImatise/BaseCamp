version 1.0

task SplitFao {
  command <<<
    split_fa_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}