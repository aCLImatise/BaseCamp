version 1.0

task GcloudSpannerInstanceconfigs {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud spanner instance_configs \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  parameter_meta {
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}