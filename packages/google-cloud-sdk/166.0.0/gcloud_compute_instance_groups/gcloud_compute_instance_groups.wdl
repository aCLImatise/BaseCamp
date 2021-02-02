version 1.0

task GcloudComputeInstancegroups {
  input {
    String managed
    String unmanaged
    String describe
    String get_named_ports
    String list
    String list_instances
    String set_named_ports
  }
  command <<<
    gcloud compute instance_groups \
      ~{managed} \
      ~{unmanaged} \
      ~{describe} \
      ~{get_named_ports} \
      ~{list} \
      ~{list_instances} \
      ~{set_named_ports}
  >>>
  parameter_meta {
    managed: "Read and manipulate Google Compute Engine managed instance groups."
    unmanaged: "Read and manipulate Google Compute Engine unmanaged instance group."
    describe: "Display detailed information about an instance group."
    get_named_ports: "Lists the named ports for an instance group resource."
    list: "List Google Compute Engine instance groups."
    list_instances: "List instances present in the instance group."
    set_named_ports: "Sets the list of named ports for an instance group."
  }
  output {
    File out_stdout = stdout()
  }
}