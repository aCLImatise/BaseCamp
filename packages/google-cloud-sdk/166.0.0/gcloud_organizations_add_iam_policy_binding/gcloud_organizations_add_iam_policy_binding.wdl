version 1.0

task GcloudOrganizationsAddiampolicybinding {
  input {
    String? role
    String? member
    String organization_id
    String? optional
    String? flags
  }
  command <<<
    gcloud organizations add_iam_policy_binding \
      ~{organization_id} \
      ~{optional} \
      ~{flags} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(member) then ("--member " +  '"' + member + '"') else ""}
  >>>
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