version 1.0

task GcloudComputeFirewallrules {
  input {
    String create
    String delete
    String describe
    String list
    String update
  }
  command <<<
    gcloud compute firewall_rules \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{update}
  >>>
  parameter_meta {
    create: "Create a Google Compute Engine firewall rule."
    delete: "Delete Google Compute Engine firewall rules."
    describe: "Describe a Google Compute Engine firewall rule."
    list: "List Google Compute Engine firewall rules."
    update: "Update a firewall rule."
  }
  output {
    File out_stdout = stdout()
  }
}