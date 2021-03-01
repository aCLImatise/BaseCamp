version 1.0

task GcloudOrganizationsOrganizations {
  input {
    String g_cloud
    String organizations
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud organizations Organizations \
      ~{g_cloud} \
      ~{organizations} \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    organizations: ""
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}