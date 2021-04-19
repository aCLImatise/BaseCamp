version 1.0

task ParsecWorkflowsImportWorkflowDict {
  input {
    Boolean? publish
    String workflow_dict
  }
  command <<<
    parsec workflows import_workflow_dict \
      ~{workflow_dict} \
      ~{if (publish) then "--publish" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    publish: "if ``True`` the uploaded workflow will be published; otherwise\\nit will be visible only by the user which uploads it (default)"
    workflow_dict: ""
  }
  output {
    File out_stdout = stdout()
  }
}