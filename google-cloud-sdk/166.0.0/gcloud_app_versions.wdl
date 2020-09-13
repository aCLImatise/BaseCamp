version 1.0

task GcloudAppVersions {
  input {
    String browse
    String delete
    String describe
    String list
    String migrate
    String start
    String stop
  }
  command <<<
    gcloud app versions \
      ~{browse} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{migrate} \
      ~{start} \
      ~{stop}
  >>>
  parameter_meta {
    browse: "Open the specified versions in a browser."
    delete: "Delete a specified version."
    describe: "Display all data about an existing version."
    list: "List your existing versions."
    migrate: "Migrate traffic from one version to another for a set of services."
    start: "Start serving specified versions."
    stop: "Stop serving specified versions."
  }
  output {
    File out_stdout = stdout()
  }
}