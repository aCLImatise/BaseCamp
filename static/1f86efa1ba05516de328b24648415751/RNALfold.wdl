version 1.0

task RNALfold {
  command <<<
    RNALfold
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}