version 1.0

task GcloudComputeSslcertificates {
  input {
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute ssl_certificates \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a Google Compute Engine SSL certificate."
    delete: "Delete Google Compute Engine SSL certificates."
    describe: "Describe a Google Compute Engine SSL certificate."
    list: "List Google Compute Engine SSL certificates."
  }
  output {
    File out_stdout = stdout()
  }
}