version 1.0

task GcloudContainerNodepools {
  input {
    Int? zone
    String create
    String delete
    String describe
    String list
    String rollback
  }
  command <<<
    gcloud container node_pools \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{rollback} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  parameter_meta {
    zone: "The compute zone (e.g. us-central1-a) for the cluster. Overrides the\\ndefault compute/zone property value for this command invocation."
    create: "Create a node pool in a running cluster."
    delete: "Delete an existing node pool in a running cluster."
    describe: "Describe an existing node pool for a cluster."
    list: "List existing node pools for a cluster."
    rollback: "Rollback a node-pool upgrade."
  }
  output {
    File out_stdout = stdout()
  }
}