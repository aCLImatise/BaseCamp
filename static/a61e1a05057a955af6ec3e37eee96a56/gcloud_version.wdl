version 1.0

task GcloudVersion {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud version \
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