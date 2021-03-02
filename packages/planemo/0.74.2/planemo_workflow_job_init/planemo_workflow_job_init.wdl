version 1.0

task PlanemoWorkflowJobInit {
  input {
    Boolean? force
    String workflow_path_or_id
  }
  command <<<
    planemo workflow_job_init \
      ~{workflow_path_or_id} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    force: "Overwrite existing files if present."
    workflow_path_or_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}