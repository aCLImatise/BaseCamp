version 1.0

task CountMutations {
  command <<<
    countMutations
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}