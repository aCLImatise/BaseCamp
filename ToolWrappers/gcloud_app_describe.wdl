version 1.0

task GcloudAppDescribe {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud app describe \
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