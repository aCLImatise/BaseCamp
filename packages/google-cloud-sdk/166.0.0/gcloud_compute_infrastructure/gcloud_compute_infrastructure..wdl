version 1.0

task GcloudComputeInfrastructure {
  input {
    String g_cloud
    String compute
    String? optional
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud compute infrastructure_ \
      ~{g_cloud} \
      ~{compute} \
      ~{optional} \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  parameter_meta {
    g_cloud: ""
    compute: ""
    optional: ""
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}