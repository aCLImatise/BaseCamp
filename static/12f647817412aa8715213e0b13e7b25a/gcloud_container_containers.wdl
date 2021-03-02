version 1.0

task GcloudContainerContainers {
  input {
    String g_cloud
    String container
    String? optional
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud container containers \
      ~{g_cloud} \
      ~{container} \
      ~{optional} \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    container: ""
    optional: ""
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}