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
  runtime {
    docker: "None"
  }
  parameter_meta {
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}