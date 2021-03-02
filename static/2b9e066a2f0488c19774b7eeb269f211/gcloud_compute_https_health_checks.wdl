version 1.0

task GcloudComputeHttpshealthchecks {
  input {
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute https_health_checks \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{update}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create an HTTPS health check to monitor load balanced instances."
    delete: "Delete HTTPS health checks."
    describe: "Display detailed information about an HTTPS health check."
    list: "List Google Compute Engine HTTPS health checks."
    update: "Update an HTTPS health check."
  }
  output {
    File out_stdout = stdout()
  }
}