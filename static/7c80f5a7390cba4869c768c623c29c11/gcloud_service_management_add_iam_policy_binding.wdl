version 1.0

task GcloudServicemanagementAddiampolicybinding {
  input {
    String? role
    String? member
    String service
    String? optional
    String? flags
  }
  command <<<
    gcloud service_management add_iam_policy_binding \
      ~{service} \
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
    service: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}