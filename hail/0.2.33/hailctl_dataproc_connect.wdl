version 1.0

task HailctlDataprocConnect {
  input {
    String? port
    String? zone
    Boolean? dry_run
  }
  command <<<
    hailctl dataproc connect \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    port: "Local port to use for SSH tunnel to master node (default: 10000)."
    zone: "Compute zone for Dataproc cluster (default: us- central1-b)."
    dry_run: "Print gcloud dataproc command, but don't run it."
  }
}