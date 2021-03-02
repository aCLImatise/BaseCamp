version 1.0

task CaperAbort {
  input {
    File? conf
    Boolean? debug
    File? gcp_service_account_key_json
    String? port
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
    String? hostname
    Directory? local_loc_dir
    Directory? tmp_gcs_bucket
    Int? tmp_s_three_bucket
    String wf_id_or_label
  }
  command <<<
    caper abort \
      ~{wf_id_or_label} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(gcp_service_account_key_json) then ("--gcp-service-account-key-json " +  '"' + gcp_service_account_key_json + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if defined(local_loc_dir) then ("--local-loc-dir " +  '"' + local_loc_dir + '"') else ""} \
      ~{if defined(tmp_gcs_bucket) then ("--tmp-gcs-bucket " +  '"' + tmp_gcs_bucket + '"') else ""} \
      ~{if defined(tmp_s_three_bucket) then ("--tmp-s3-bucket " +  '"' + tmp_s_three_bucket + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/caper:1.1.0--py_0"
  }
  parameter_meta {
    conf: "Specify config file"
    debug: "Prints all logs >= DEBUG level"
    gcp_service_account_key_json: "Secret key JSON file for Google Cloud Platform service\\naccount. This service account should have enough\\npermission to Storage for client functions and\\nStorage/Compute Engine/Genomics API/Life Sciences API\\nfor server/runner functions."
    port: "Port for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of\\na server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A\\nheartbeat file older than this interval will be\\nignored."
    hostname: "Hostname (or IP address) of Caper server."
    local_loc_dir: "Temporary directory to store Cromwell's intermediate\\nbackend files. These files include backend.conf,\\nworkflow_opts.json, imports.zip. and localized input\\nJSON files due to deepcopying (recursive\\nlocalization). Cromwell's MySQL/PostgreSQL DB password\\ncan be exposed on backend.conf on this directory.\\nTherefore, DO NOT USE /tmp HERE. This directory is\\nalso used for storing cached files for\\nlocal/slurm/sge/pbs backends."
    tmp_gcs_bucket: "Temporary directory to store cached files for gcp\\nbackend. e.g. gs://my-bucket/caper-cache-dir."
    tmp_s_three_bucket: "Temporary directory to store cached files for aws\\nbackend. e.g. s3://my-bucket/caper-cache-dir.\\n"
    wf_id_or_label: "List of workflow IDs to find matching workflows to\\ncommit a specified action (list, metadata and abort).\\nWildcards (* and ?) are allowed."
  }
  output {
    File out_stdout = stdout()
  }
}