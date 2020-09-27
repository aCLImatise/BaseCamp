version 1.0

task GcloudMlengineLocal {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud ml_engine local \
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