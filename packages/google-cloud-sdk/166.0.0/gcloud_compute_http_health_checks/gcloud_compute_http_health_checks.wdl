version 1.0

task GcloudComputeHttphealthchecks {
  input {
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute http_health_checks \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{update}
  >>>
  parameter_meta {
    create: "Create an HTTP health check to monitor load balanced instances."
    delete: "Delete HTTP health checks."
    describe: "Display detailed information about an HTTP health check."
    list: "List Google Compute Engine health checks."
    update: "Update an HTTP health check."
  }
  output {
    File out_stdout = stdout()
  }
}