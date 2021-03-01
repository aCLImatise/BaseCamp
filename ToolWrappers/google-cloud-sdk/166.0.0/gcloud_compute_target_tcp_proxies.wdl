version 1.0

task GcloudComputeTargettcpproxies {
  input {
    String proxies
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute target_tcp_proxies \
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
    create: "Create a target TCP proxy."
    delete: "Delete target TCP proxies."
    describe: "Display detailed information about a target TCP proxy."
    list: "List Google Compute Engine target TCP proxies."
    update: "Update a target TCP proxy."
  }
  output {
    File out_stdout = stdout()
  }
}