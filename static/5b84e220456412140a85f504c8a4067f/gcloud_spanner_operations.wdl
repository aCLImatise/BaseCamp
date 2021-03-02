version 1.0

task GcloudSpannerOperations {
  input {
    String cancel
    String describe
    String list
  }
  command <<<
    gcloud spanner operations \
      ~{cancel} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cancel: "Cancel a Cloud Spanner operation."
    describe: "Describe a Cloud Spanner operation."
    list: "List the Cloud Spanner operations on the given instance or database."
  }
  output {
    File out_stdout = stdout()
  }
}