version 1.0

task DeepacExplain {
  command <<<
    deepac explain
  >>>
  output {
    File out_stdout = stdout()
  }
}