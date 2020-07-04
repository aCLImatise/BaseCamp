version 1.0

task HailctlDataprocModify {
  input {
    String? wheel
    String? num_workers
    String? num_preemptible_workers
    String? graceful_decommission_timeout
    Int? max_idle
    Boolean? dry_run
    String? zone
    Boolean? update_hail_version
    String name
  }
  command <<<
    hailctl dataproc modify \
      ~{name} \
      ~{if defined(wheel) then ("--wheel " +  '"' + wheel + '"') else ""} \
      ~{if defined(num_workers) then ("--num-workers " +  '"' + num_workers + '"') else ""} \
      ~{if defined(num_preemptible_workers) then ("--num-preemptible-workers " +  '"' + num_preemptible_workers + '"') else ""} \
      ~{if defined(graceful_decommission_timeout) then ("--graceful-decommission-timeout " +  '"' + graceful_decommission_timeout + '"') else ""} \
      ~{if defined(max_idle) then ("--max-idle " +  '"' + max_idle + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{true="--update-hail-version" false="" update_hail_version}
  >>>
  parameter_meta {
    wheel: "New Hail installation."
    num_workers: "New number of worker machines (min. 2)."
    num_preemptible_workers: "New number of preemptible worker machines."
    graceful_decommission_timeout: "If set, cluster size downgrade will use graceful decommissioning with the given timeout (e.g. \"60m\")."
    max_idle: "New maximum idle time before shutdown (e.g. \"60m\")."
    dry_run: "Print gcloud dataproc command, but don't run it."
    zone: "Compute zone for Dataproc cluster (default: us- central1-b)."
    update_hail_version: "Update the version of hail running on cluster to match the currently installed version."
    name: "Cluster name."
  }
}