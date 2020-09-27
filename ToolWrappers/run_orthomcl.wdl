version 1.0

task RunOrthomcl {
  command <<<
    run_orthomcl
  >>>
  output {
    File out_stdout = stdout()
  }
}