version 1.0

task GcloudComputeTargethttpproxies {
  input {
    String proxies
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute target_http_proxies \
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
    create: "Create a target HTTP proxy."
    delete: "Delete target HTTP proxies."
    describe: "Display detailed information about a target HTTP proxy."
    list: "List Google Compute Engine target HTTP proxies."
    update: "Update a target HTTP proxy."
  }
  output {
    File out_stdout = stdout()
  }
}