version 1.0

task GcloudComputeInstances {
  input {
    String add_access_config
    String add_labels
    String add_metadata
    String add_tags
    String attach_disk
    String create
    String delete
    String delete_access_config
    String interface_dot
    String detach_disk
    String get_serial_port_output
    String list
    String move
    String remove_labels
    String remove_metadata
    String remove_tags
    String reset
    String set_disk_auto_delete
    String set_machine_type
    String set_scheduling
    String set_service_account
    String start
    String stop
    String tail_serial_port_output
    String update
  }
  command <<<
    gcloud compute instances \
      ~{add_access_config} \
      ~{add_labels} \
      ~{add_metadata} \
      ~{add_tags} \
      ~{attach_disk} \
      ~{create} \
      ~{delete} \
      ~{delete_access_config} \
      ~{interface_dot} \
      ~{detach_disk} \
      ~{get_serial_port_output} \
      ~{list} \
      ~{move} \
      ~{remove_labels} \
      ~{remove_metadata} \
      ~{remove_tags} \
      ~{reset} \
      ~{set_disk_auto_delete} \
      ~{set_machine_type} \
      ~{set_scheduling} \
      ~{set_service_account} \
      ~{start} \
      ~{stop} \
      ~{tail_serial_port_output} \
      ~{update}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_access_config: "Create a Google Compute Engine virtual machine access configuration."
    add_labels: "Add labels to Google Compute Engine virtual machine instances."
    add_metadata: "Add or update instance metadata."
    add_tags: "Add tags to Google Compute Engine virtual machine instances."
    attach_disk: "Attach a disk to an instance."
    create: "Create Google Compute Engine virtual machine instances."
    delete: "Delete Google Compute Engine virtual machine instances."
    delete_access_config: "Delete an access configuration from a virtual machine network"
    interface_dot: "describe"
    detach_disk: "Detach disks from Compute Engine virtual machine instances."
    get_serial_port_output: "Read output from a virtual machine instance's serial port."
    list: "List Google Compute Engine instances."
    move: "Move an instance and its attached persistent disks between zones."
    remove_labels: "Remove labels from Google Compute Engine virtual machine instances."
    remove_metadata: "Remove instance metadata."
    remove_tags: "Remove tags from Google Compute Engine virtual machine instances."
    reset: "Reset a virtual machine instance."
    set_disk_auto_delete: "Set auto-delete behavior for disks."
    set_machine_type: "Set machine type for Google Compute Engine virtual machines."
    set_scheduling: "Set scheduling options for Google Compute Engine virtual machines."
    set_service_account: "Set service account and scopes for a Google Compute Engine instance."
    start: "Start a stopped virtual machine instance."
    stop: "Stop a virtual machine instance."
    tail_serial_port_output: "Periodically fetch new output from a virtual machine instance's serial\\nport and display it as it becomes available."
    update: "Update a Google Compute Engine virtual machine."
  }
  output {
    File out_stdout = stdout()
  }
}