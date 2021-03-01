version 1.0

task GcloudComputeBackendbuckets {
  input {
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute backend_buckets \
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
    create: "Create a backend bucket."
    delete: "Delete backend buckets."
    describe: "Describe a backend bucket."
    list: "List Google Compute Engine backend buckets."
    update: "Update a backend bucket."
  }
  output {
    File out_stdout = stdout()
  }
}