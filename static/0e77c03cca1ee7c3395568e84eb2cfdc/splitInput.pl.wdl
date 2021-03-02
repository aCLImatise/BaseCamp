version 1.0

task SplitInputpl {
  command <<<
    splitInput_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}