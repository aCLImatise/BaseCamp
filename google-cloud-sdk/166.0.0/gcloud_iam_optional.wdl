version 1.0

task GcloudIamOptional {
  input {
    String? flags
    String group_vertical_line_command
  }
  command <<<
    gcloud iam optional \
      ~{flags} \
      ~{group_vertical_line_command}
  >>>
  parameter_meta {
    flags: ""
    group_vertical_line_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}