version 1.0

task RNAalisplitpl {
  command <<<
    RNAalisplit_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}