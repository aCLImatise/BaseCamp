version 1.0

task GcloudContainerClusters {
  input {
    Int? zone
    String clusters
    String clusters_dot
    String create
    String delete
    String describe
    String get_credentials
    String list
    String resize
    String update
    String upgrade
  }
  command <<<
    gcloud container clusters \
      ~{clusters} \
      ~{clusters_dot} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{get_credentials} \
      ~{list} \
      ~{resize} \
      ~{update} \
      ~{upgrade} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    zone: "The compute zone (e.g. us-central1-a) for the cluster. Overrides the\\ndefault compute/zone property value for this command invocation."
    clusters: "SYNOPSIS"
    clusters_dot: "FLAGS"
    create: "Create a cluster for running containers."
    delete: "Delete an existing cluster for running containers."
    describe: "Describe an existing cluster for running containers."
    get_credentials: "Fetch credentials for a running cluster."
    list: "List existing clusters for running containers."
    resize: "Resizes an existing cluster for running containers."
    update: "Update cluster settings for an existing container cluster."
    upgrade: "Upgrade the Kubernetes version of an existing container cluster."
  }
  output {
    File out_stdout = stdout()
  }
}