version 1.0

task GcloudComputeRouters {
  input {
    String routers
    String add_bgp_peer
    String add_interface
    String create
    String delete
    String describe
    String get_status
    String list
    String remove_bgp_peer
    String remove_interface
    String update_bgp_peer
    String update_interface
  }
  command <<<
    gcloud compute routers \
      ~{routers} \
      ~{add_bgp_peer} \
      ~{add_interface} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{get_status} \
      ~{list} \
      ~{remove_bgp_peer} \
      ~{remove_interface} \
      ~{update_bgp_peer} \
      ~{update_interface}
  >>>
  parameter_meta {
    routers: "SYNOPSIS"
    add_bgp_peer: "Add a BGP peer to a Google Compute Engine router."
    add_interface: "Add an interface to a Google Compute Engine router."
    create: "Create a Google Compute Engine router."
    delete: "Delete Google Compute Engine routers."
    describe: "Describe a Google Compute Engine router."
    get_status: "Get status of a Google Compute Engine router."
    list: "List Google Compute Engine routers."
    remove_bgp_peer: "Remove a BGP peer from a Google Compute Engine router."
    remove_interface: "Remove an interface from a Google Compute Engine router."
    update_bgp_peer: "Update a BGP peer on a Google Compute Engine router."
    update_interface: "Update an interface on a Google Compute Engine router."
  }
  output {
    File out_stdout = stdout()
  }
}