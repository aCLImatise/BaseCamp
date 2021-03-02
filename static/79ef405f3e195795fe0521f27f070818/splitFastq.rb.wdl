version 1.0

task SplitFastqrb {
  command <<<
    splitFastq_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}