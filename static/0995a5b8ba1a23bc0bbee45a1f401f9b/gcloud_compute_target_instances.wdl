version 1.0

task GcloudComputeTargetinstances {
  input {
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute target_instances \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a target instance for handling traffic from a forwarding rule."
    delete: "Delete target instances."
    describe: "Describe a target instance."
    list: "List Google Compute Engine target instances."
  }
  output {
    File out_stdout = stdout()
  }
}