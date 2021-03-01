version 1.0

task HailctlDataprocModify {
  input {
    String? wheel
    Int? num_workers
    Int? num_preemptible_workers
    Int? graceful_decommission_timeout
    Int? max_idle
    Boolean? dry_run
    Int? zone
    Boolean? update_hail_version
  }
  command <<<
    hailctl dataproc modify \
      ~{if defined(wheel) then ("--wheel " +  '"' + wheel + '"') else ""} \
      ~{if defined(num_workers) then ("--num-workers " +  '"' + num_workers + '"') else ""} \
      ~{if defined(num_preemptible_workers) then ("--num-preemptible-workers " +  '"' + num_preemptible_workers + '"') else ""} \
      ~{if defined(graceful_decommission_timeout) then ("--graceful-decommission-timeout " +  '"' + graceful_decommission_timeout + '"') else ""} \
      ~{if defined(max_idle) then ("--max-idle " +  '"' + max_idle + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if (update_hail_version) then "--update-hail-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    wheel: "New Hail installation."
    num_workers: "New number of worker machines (min. 2)."
    num_preemptible_workers: "New number of preemptible worker machines."
    graceful_decommission_timeout: "If set, cluster size downgrade will use graceful\\ndecommissioning with the given timeout (e.g. \\\"60m\\\")."
    max_idle: "New maximum idle time before shutdown (e.g. \\\"60m\\\")."
    dry_run: "Print gcloud dataproc command, but don't run it."
    zone: "Compute zone for Dataproc cluster (default: us-\\ncentral1-b)."
    update_hail_version: "Update the version of hail running on cluster to match\\nthe currently installed version.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}