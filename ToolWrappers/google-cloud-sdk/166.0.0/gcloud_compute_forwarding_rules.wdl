version 1.0

task GcloudComputeForwardingrules {
  input {
    String create
    String delete
    String describe
    String list
    String set_target
  }
  command <<<
    gcloud compute forwarding_rules \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{set_target}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a forwarding rule to direct network traffic to a load balancer."
    delete: "Delete forwarding rules."
    describe: "Display detailed information about a forwarding rule."
    list: "List Google Compute Engine forwarding rules."
    set_target: "Modify a forwarding rule to direct network traffic to a new target."
  }
  output {
    File out_stdout = stdout()
  }
}