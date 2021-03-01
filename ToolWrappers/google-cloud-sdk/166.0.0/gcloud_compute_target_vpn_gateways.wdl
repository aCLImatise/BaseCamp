version 1.0

task GcloudComputeTargetvpngateways {
  input {
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute target_vpn_gateways \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a target VPN Gateway."
    delete: "Delete target vpn gateways."
    describe: "Describe a Google Compute Engine target vpn gateway."
    list: "List Google Compute Engine target VPN gateways."
  }
  output {
    File out_stdout = stdout()
  }
}