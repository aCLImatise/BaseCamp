version 1.0

task Pwatcherpypeflowexample {
  command <<<
    pwatcher_pypeflow_example
  >>>
  output {
    File out_stdout = stdout()
  }
}