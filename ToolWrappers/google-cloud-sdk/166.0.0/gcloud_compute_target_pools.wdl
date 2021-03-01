version 1.0

task GcloudComputeTargetpools {
  input {
    String add_health_checks
    String add_instances
    String create
    String delete
    String describe
    String get_health
    String list
    String remove_health_checks
    String remove_instances
    String set_backup
  }
  command <<<
    gcloud compute target_pools \
      ~{add_health_checks} \
      ~{add_instances} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{get_health} \
      ~{list} \
      ~{remove_health_checks} \
      ~{remove_instances} \
      ~{set_backup}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_health_checks: "Add an HTTP health check to a target pool."
    add_instances: "Add instances to a target pool."
    create: "Define a load-balanced pool of virtual machine instances."
    delete: "Delete target pools."
    describe: "Describe a Google Compute Engine target pool."
    get_health: "Get the health of instances in a target pool."
    list: "List Google Compute Engine target pools."
    remove_health_checks: "Remove an HTTP health check from a target pool."
    remove_instances: "Remove instances from a target pool."
    set_backup: "Set a backup pool for a target pool."
  }
  output {
    File out_stdout = stdout()
  }
}