version 1.0

task GcloudComputeTargethttpsproxies {
  input {
    String proxies
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute target_https_proxies \
      ~{proxies} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{update}
  >>>
  parameter_meta {
    proxies: "SYNOPSIS"
    create: "Create a target HTTPS proxy."
    delete: "Delete target HTTPS proxies."
    describe: "Display detailed information about a target HTTPS proxy."
    list: "List Google Compute Engine target HTTPS proxies."
    update: "Update a target HTTPS proxy."
  }
  output {
    File out_stdout = stdout()
  }
}