version 1.0

task GcloudSqlConnect {
  input {
    String instance
    String? optional
    String? flags
  }
  command <<<
    gcloud sql connect \
      ~{instance} \
      ~{optional} \
      ~{flags}
  >>>
  parameter_meta {
    instance: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}