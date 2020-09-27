version 1.0

task GcloudKmsLocations {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud kms locations \
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