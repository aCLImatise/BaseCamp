version 1.0

task HailctlDataprocModify {
  input {
    Int? num_workers
    Int? num_preemptible_workers
    Int? graceful_decommission_timeout
    Int? max_idle
    Boolean? no_max_idle
    Int? expiration_time
    Int? max_age
    Boolean? no_max_age
    String? zone
    Boolean? update_hail_version
    String? wheel
    String time_dot
  }
  command <<<
    hailctl dataproc modify \
      ~{time_dot} \
      ~{if defined(num_workers) then ("--num-workers " +  '"' + num_workers + '"') else ""} \
      ~{if defined(num_preemptible_workers) then ("--num-preemptible-workers " +  '"' + num_preemptible_workers + '"') else ""} \
      ~{if defined(graceful_decommission_timeout) then ("--graceful-decommission-timeout " +  '"' + graceful_decommission_timeout + '"') else ""} \
      ~{if defined(max_idle) then ("--max-idle " +  '"' + max_idle + '"') else ""} \
      ~{if (no_max_idle) then "--no-max-idle" else ""} \
      ~{if defined(expiration_time) then ("--expiration-time " +  '"' + expiration_time + '"') else ""} \
      ~{if defined(max_age) then ("--max-age " +  '"' + max_age + '"') else ""} \
      ~{if (no_max_age) then "--no-max-age" else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if (update_hail_version) then "--update-hail-version" else ""} \
      ~{if defined(wheel) then ("--wheel " +  '"' + wheel + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    num_workers: "New number of worker machines (min. 2)."
    num_preemptible_workers: "New number of secondary (preemptible) worker machines."
    graceful_decommission_timeout: "If set, cluster size downgrade will use graceful\\ndecommissioning with the given timeout (e.g. \\\"60m\\\")."
    max_idle: "New maximum idle time before shutdown (e.g. \\\"60m\\\")."
    no_max_idle: "Disable auto deletion after idle time."
    expiration_time: "The time when cluster will be auto-deleted. (e.g.\\n\\\"2020-01-01T20:00:00Z\\\"). Execute gcloud topic\\ndatatimes for more information."
    max_age: "If the cluster is older than this, it will be auto-\\ndeleted. (e.g. \\\"2h\\\")Execute gcloud topic datatimes for\\nmore information."
    no_max_age: "Disable auto-deletion due to max age or expiration"
    zone: "Compute zone for Dataproc cluster."
    update_hail_version: "Update the version of hail running on cluster to match\\nthe currently installed version."
    wheel: "New Hail installation."
    time_dot: "--dry-run             Print gcloud dataproc command, but don't run it."
  }
  output {
    File out_stdout = stdout()
  }
}