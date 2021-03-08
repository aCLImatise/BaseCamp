version 1.0

task PlanemoListInvocations {
  input {
    String? profile
    String workflow_identifier
  }
  command <<<
    planemo list_invocations \
      ~{workflow_identifier} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    profile: "Name of profile (created with the profile_create command) to\\nuse with this command.  [required]"
    workflow_identifier: ""
  }
  output {
    File out_stdout = stdout()
  }
}