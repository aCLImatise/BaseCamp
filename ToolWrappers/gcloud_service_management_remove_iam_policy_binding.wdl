version 1.0

task GcloudServicemanagementRemoveiampolicybinding {
  input {
    String? role
    String? member
    String service
    String? optional
    String? flags
  }
  command <<<
    gcloud service_management remove_iam_policy_binding \
      ~{service} \
      ~{optional} \
      ~{flags} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(member) then ("--member " +  '"' + member + '"') else ""}
  >>>
  parameter_meta {
    role: ""
    member: ""
    service: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}