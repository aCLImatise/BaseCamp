version 1.0

task GcloudComputeTargetsslproxies {
  input {
    String proxies
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute target_ssl_proxies \
      ~{proxies} \
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
    proxies: "SYNOPSIS"
    create: "Create a target SSL proxy."
    delete: "Delete target SSL proxies."
    describe: "Display detailed information about a target SSL proxy."
    list: "List Google Compute Engine target SSL proxies."
    update: "Update a target SSL proxy."
  }
  output {
    File out_stdout = stdout()
  }
}