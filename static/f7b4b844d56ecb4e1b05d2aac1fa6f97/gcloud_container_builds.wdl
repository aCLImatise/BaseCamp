version 1.0

task GcloudContainerBuilds {
  input {
    String cancel
    String describe
    String list
    String log
    String submit
  }
  command <<<
    gcloud container builds \
      ~{cancel} \
      ~{describe} \
      ~{list} \
      ~{log} \
      ~{submit}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cancel: "Cancel an ongoing build."
    describe: "Get information about a particular build."
    list: "List builds."
    log: "Stream the logs for a build."
    submit: "Submit a build using the Google Container Builder service."
  }
  output {
    File out_stdout = stdout()
  }
}