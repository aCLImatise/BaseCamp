version 1.0

task GcloudComputeAddresses {
  input {
    String addresses
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute addresses \
      ~{addresses} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    addresses: "SYNOPSIS"
    create: "Reserve IP addresses."
    delete: "Release reserved IP addresses."
    describe: "Display detailed information about an address."
    list: "List addresses."
  }
  output {
    File out_stdout = stdout()
  }
}