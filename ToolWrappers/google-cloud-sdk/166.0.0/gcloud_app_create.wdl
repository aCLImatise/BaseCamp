version 1.0

task GcloudAppCreate {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud app create \
      ~{optional} \
      ~{flags}
  >>>
  parameter_meta {
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}