version 1.0

task CountMutationspy {
  command <<<
    countMutations_py
  >>>
  output {
    File out_stdout = stdout()
  }
}