version 1.0

task HailctlDataprocStop {
  input {
    Boolean? async
    Boolean? dry_run
    String name
  }
  command <<<
    hailctl dataproc stop \
      ~{name} \
      ~{if (async) then "--async" else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    async: "Do not wait for cluster deletion."
    dry_run: "Print gcloud dataproc command, but don't run it."
    name: "Cluster name."
  }
  output {
    File out_stdout = stdout()
  }
}