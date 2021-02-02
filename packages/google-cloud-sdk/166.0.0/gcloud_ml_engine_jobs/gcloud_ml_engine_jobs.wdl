version 1.0

task GcloudMlengineJobs {
  input {
    String submit
    String cancel
    String describe
    String list
    String stream_logs
  }
  command <<<
    gcloud ml_engine jobs \
      ~{submit} \
      ~{cancel} \
      ~{describe} \
      ~{list} \
      ~{stream_logs}
  >>>
  parameter_meta {
    submit: "Cloud ML Engine Jobs submit commands."
    cancel: "Cancel a running Cloud ML Engine job."
    describe: "Describe a Cloud ML Engine job."
    list: "List existing Cloud ML Engine jobs."
    stream_logs: "Show logs from a running Cloud ML Engine job."
  }
  output {
    File out_stdout = stdout()
  }
}