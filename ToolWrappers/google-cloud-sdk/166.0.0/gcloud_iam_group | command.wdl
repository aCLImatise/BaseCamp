version 1.0

task GcloudIamGroupcommand {
  input {
    String g_cloud
    String i_am
    String? optional
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud iam group___command \
      ~{g_cloud} \
      ~{i_am} \
      ~{optional} \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    i_am: ""
    optional: ""
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}