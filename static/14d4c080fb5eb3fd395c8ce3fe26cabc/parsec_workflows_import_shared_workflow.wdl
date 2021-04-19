version 1.0

task ParsecWorkflowsImportSharedWorkflow {
  input {
    String workflow_id
  }
  command <<<
    parsec workflows import_shared_workflow \
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