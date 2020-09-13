version 1.0

task GcloudComputeHealthchecks {
  input {
    String create
    String update
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute health_checks \
      ~{create} \
      ~{update} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  parameter_meta {
    create: "Create health checks for load balanced instances."
    update: "Update health checks for load balanced instances."
    delete: "Delete health checks."
    describe: "Display detailed information about a health check."
    list: "List Google Compute Engine health checks."
  }
  output {
    File out_stdout = stdout()
  }
}