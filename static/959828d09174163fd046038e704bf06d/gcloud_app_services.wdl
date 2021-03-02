version 1.0

task GcloudAppServices {
  input {
    String browse
    String delete
    String describe
    String list
    String set_traffic
  }
  command <<<
    gcloud app services \
      ~{browse} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{set_traffic}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    browse: "Open the specified service(s) in a browser."
    delete: "Delete services in the current project."
    describe: "Display all data about an existing service."
    list: "List your existing services."
    set_traffic: "Set traffic splitting settings."
  }
  output {
    File out_stdout = stdout()
  }
}