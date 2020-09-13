version 1.0

task GcloudComponentsUpdate {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud components update \
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