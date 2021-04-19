version 1.0

task ParsecWorkflowsGetWorkflowInputs {
  input {
    String workflow_id
    String label
  }
  command <<<
    parsec workflows get_workflow_inputs \
      ~{workflow_id} \
      ~{label}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    workflow_id: ""
    label: ""
  }
  output {
    File out_stdout = stdout()
  }
}