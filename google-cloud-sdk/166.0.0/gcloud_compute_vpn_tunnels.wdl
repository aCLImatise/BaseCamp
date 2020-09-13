version 1.0

task GcloudComputeVpntunnels {
  input {
    String tunnels
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute vpn_tunnels \
      ~{tunnels} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  parameter_meta {
    tunnels: "SYNOPSIS"
    create: "Create a VPN tunnel."
    delete: "Delete vpn tunnels."
    describe: "Describe a Google Compute Engine vpn tunnel."
    list: "List Google Compute Engine VPN tunnels."
  }
  output {
    File out_stdout = stdout()
  }
}