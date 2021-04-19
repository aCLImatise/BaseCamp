version 1.0

task ParsecWorkflowsRunInvocationStepAction {
  input {
    String action
  }
  command <<<
    parsec workflows run_invocation_step_action \
      ~{action}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    action: "nature of this action and what is expected will vary based on the the type"
  }
  output {
    File out_stdout = stdout()
  }
}