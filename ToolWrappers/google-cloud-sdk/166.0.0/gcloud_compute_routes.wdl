version 1.0

task GcloudComputeRoutes {
  input {
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute routes \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a new route."
    delete: "Delete routes."
    describe: "Describe a route."
    list: "List Google Compute Engine routes."
  }
  output {
    File out_stdout = stdout()
  }
}