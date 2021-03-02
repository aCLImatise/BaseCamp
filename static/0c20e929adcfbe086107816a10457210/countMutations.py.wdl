version 1.0

task CountMutationspy {
  command <<<
    countMutations_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}