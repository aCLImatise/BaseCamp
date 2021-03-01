version 1.0

task HailctlDataprocSubmit {
  input {
    Directory? files
    String? py_files
    String? properties
    String? g_cloud_configuration
    Boolean? dry_run
    String name
    String script
  }
  command <<<
    hailctl dataproc submit \
      ~{name} \
      ~{script} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(py_files) then ("--pyfiles " +  '"' + py_files + '"') else ""} \
      ~{if defined(properties) then ("--properties " +  '"' + properties + '"') else ""} \
      ~{if defined(g_cloud_configuration) then ("--gcloud_configuration " +  '"' + g_cloud_configuration + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    files: "Comma-separated list of files to add to the working\\ndirectory of the Hail application."
    py_files: "Comma-separated list of files (or directories with\\npython files) to add to the PYTHONPATH."
    properties: "Extra Spark properties to set."
    g_cloud_configuration: "Google Cloud configuration to submit job (defaults to\\ncurrently set configuration)."
    dry_run: "Print gcloud dataproc command, but don't run it."
    name: "Cluster name."
    script: "Path to script."
  }
  output {
    File out_stdout = stdout()
  }
}