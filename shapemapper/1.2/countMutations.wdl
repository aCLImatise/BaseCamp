version 1.0

task CountMutations {
  command <<<
    countMutations
  >>>
  output {
    File out_stdout = stdout()
  }
}