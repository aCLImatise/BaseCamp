version 1.0

task RunOrthomclpy {
  command <<<
    run_orthomcl_py
  >>>
  output {
    File out_stdout = stdout()
  }
}