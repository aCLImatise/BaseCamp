version 1.0

task GcloudConfigDisableUpdateCheck {
  input {
    String g_cloud
    String config
    String? optional
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud config disable_update_check \
      ~{g_cloud} \
      ~{config} \
      ~{optional} \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    config: ""
    optional: ""
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}