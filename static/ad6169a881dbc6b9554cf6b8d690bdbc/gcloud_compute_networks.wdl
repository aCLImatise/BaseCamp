version 1.0

task GcloudComputeNetworks {
  input {
    String networks
    String peering_s
    String subnets
    String create
    String delete
    String describe
    String list
    String switch_mode
  }
  command <<<
    gcloud compute networks \
      ~{networks} \
      ~{peering_s} \
      ~{subnets} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{switch_mode}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    networks: "SYNOPSIS"
    peering_s: "List, create, and delete Google Compute Engine network peerings."
    subnets: "List, describe, and delete Google Compute Engine subnetworks."
    create: "Create a Google Compute Engine network."
    delete: "Delete Google Compute Engine networks."
    describe: "Describe a Google Compute Engine network."
    list: "List Google Compute Engine networks."
    switch_mode: "Switch the mode of a Google Compute Engine network."
  }
  output {
    File out_stdout = stdout()
  }
}