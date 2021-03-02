version 1.0

task RunOrthomclpy {
  command <<<
    run_orthomcl_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}