version 1.0

task GcloudContainerGetserverconfig {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud container get_server_config \
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