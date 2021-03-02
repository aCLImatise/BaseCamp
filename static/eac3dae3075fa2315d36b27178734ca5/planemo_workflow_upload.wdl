version 1.0

task PlanemoWorkflowUpload {
  input {
    String? namespace
    Boolean? dry_run
    String target
  }
  command <<<
    planemo workflow_upload \
      ~{target} \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if (dry_run) then "--dry_run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    namespace: "Organization or username under which to create or update\\nworkflow repository. Must be a valid github username or\\norganization"
    dry_run: "Don't execute action, show preview of action."
    target: ""
  }
  output {
    File out_stdout = stdout()
  }
}