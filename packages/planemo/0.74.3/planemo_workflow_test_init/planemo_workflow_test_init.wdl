version 1.0

task PlanemoWorkflowTestInit {
  input {
    Boolean? force
    File? no_split_test
    String workflow_path_or_id
  }
  command <<<
    planemo workflow_test_init \
      ~{workflow_path_or_id} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(no_split_test) then ("--no_split_test " +  '"' + no_split_test + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    force: "Overwrite existing files if present."
    no_split_test: "Write workflow job and test definitions to\\nseparate files."
    workflow_path_or_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}