version 1.0

task GcloudServicemanagementEndpoints {
  input {
    String g_cloud
    String service_management
    String? optional
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud service_management Endpoints_ \
      ~{g_cloud} \
      ~{service_management} \
      ~{optional} \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  parameter_meta {
    g_cloud: ""
    service_management: ""
    optional: ""
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}