version 1.0

task GcloudProjectsAddiampolicybinding {
  input {
    String? role
    String? member
    String project_id
    String? optional
    String? flags
  }
  command <<<
    gcloud projects add_iam_policy_binding \
      ~{project_id} \
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
    project_id: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}