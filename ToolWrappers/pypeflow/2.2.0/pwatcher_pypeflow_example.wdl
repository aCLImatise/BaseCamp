version 1.0

task Pwatcherpypeflowexample {
  command <<<
    pwatcher_pypeflow_example
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}