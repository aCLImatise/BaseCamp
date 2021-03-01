version 1.0

task GcloudComponentsComponents {
  input {
    String g_cloud
    String components
    String? optional
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud components components \
      ~{g_cloud} \
      ~{components} \
      ~{optional} \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    components: ""
    optional: ""
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}