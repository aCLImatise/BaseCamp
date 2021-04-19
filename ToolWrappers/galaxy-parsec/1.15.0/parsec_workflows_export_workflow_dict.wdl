version 1.0

task ParsecWorkflowsExportWorkflowDict {
  input {
    String workflow_id
  }
  command <<<
    parsec workflows export_workflow_dict \
      ~{workflow_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    workflow_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}