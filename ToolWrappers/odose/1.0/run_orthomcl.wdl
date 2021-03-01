version 1.0

task RunOrthomcl {
  command <<<
    run_orthomcl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}