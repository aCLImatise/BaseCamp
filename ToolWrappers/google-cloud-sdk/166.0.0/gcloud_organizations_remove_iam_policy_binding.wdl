version 1.0

task GcloudOrganizationsRemoveiampolicybinding {
  input {
    String? role
    String? member
    String organization_id
    String? optional
    String? flags
  }
  command <<<
    gcloud organizations remove_iam_policy_binding \
      ~{organization_id} \
      ~{optional} \
      ~{flags} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(member) then ("--member " +  '"' + member + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    role: ""
    member: ""
    organization_id: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}