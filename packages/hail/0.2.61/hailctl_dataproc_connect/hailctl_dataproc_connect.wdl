version 1.0

task HailctlDataprocConnect {
  input {
    String? project
    Int? port
    String? zone
    Boolean? dry_run
  }
  command <<<
    hailctl dataproc connect \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    project: "Google Cloud project for the cluster (defaults to\\ncurrently set project)."
    port: "Local port to use for SSH tunnel to leader (master)\\nnode (default: 10000)."
    zone: "Compute zone for Dataproc cluster."
    dry_run: "Print gcloud dataproc command, but don't run it."
  }
  output {
    File out_stdout = stdout()
  }
}