version 1.0

task ParsecWorkflowsImportWorkflowFromLocalPath {
  input {
    Boolean? publish
    String file_local_path
  }
  command <<<
    parsec workflows import_workflow_from_local_path \
      ~{file_local_path} \
      ~{if (publish) then "--publish" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    publish: "if ``True`` the uploaded workflow will be published; otherwise\\nit will be visible only by the user which uploads it (default)"
    file_local_path: "Imports a new workflow given the path to a file containing a previously"
  }
  output {
    File out_stdout = stdout()
  }
}