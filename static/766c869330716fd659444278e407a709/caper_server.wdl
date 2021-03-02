version 1.0

task CaperServer {
  input {
    File? conf
    Boolean? debug
    File? gcp_service_account_key_json
    String? port
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
    Int? java_heap_server
    File? cromwell_stdout
    String? backend
    Boolean? dry_run
    Directory? local_loc_dir
    Directory? tmp_gcs_bucket
    Int? tmp_s_three_bucket
    String? db
    String? db_timeout
    File? file_db
    String? mysql_db_ip
    Int? mysql_db_port
    String? mysql_db_user
    String? mysql_db_password
    String? mysql_db_name
    String? postgresql_db_ip
    Int? postgresql_db_port
    String? postgresql_db_user
    String? postgresql_db_password
    String? postgresql_db_name
    File? cromwell
    Int? max_concurrent_tasks
    Int? max_concurrent_workflows
    Boolean? disable_call_caching
    File? backend_file
    Boolean? soft_glob_output
    Boolean? local_hash_strat
    File? local_out_dir
    String? gcp_prj
    Int? gcp_memory_retry_error_keys
    Int? gcp_memory_retry_multiplier
    String? gcp_region
    String? gcp_call_caching_dup_strat
    File? out_gcs_bucket
    String? aws_batch_arn
    Int? aws_region
    File? out_s_three_bucket
    Boolean? use_google_cloud_life_sciences
    Int? gcp_zones
  }
  command <<<
    caper server \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(gcp_service_account_key_json) then ("--gcp-service-account-key-json " +  '"' + gcp_service_account_key_json + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
      ~{if defined(java_heap_server) then ("--java-heap-server " +  '"' + java_heap_server + '"') else ""} \
      ~{if defined(cromwell_stdout) then ("--cromwell-stdout " +  '"' + cromwell_stdout + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(local_loc_dir) then ("--local-loc-dir " +  '"' + local_loc_dir + '"') else ""} \
      ~{if defined(tmp_gcs_bucket) then ("--tmp-gcs-bucket " +  '"' + tmp_gcs_bucket + '"') else ""} \
      ~{if defined(tmp_s_three_bucket) then ("--tmp-s3-bucket " +  '"' + tmp_s_three_bucket + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(db_timeout) then ("--db-timeout " +  '"' + db_timeout + '"') else ""} \
      ~{if defined(file_db) then ("--file-db " +  '"' + file_db + '"') else ""} \
      ~{if defined(mysql_db_ip) then ("--mysql-db-ip " +  '"' + mysql_db_ip + '"') else ""} \
      ~{if defined(mysql_db_port) then ("--mysql-db-port " +  '"' + mysql_db_port + '"') else ""} \
      ~{if defined(mysql_db_user) then ("--mysql-db-user " +  '"' + mysql_db_user + '"') else ""} \
      ~{if defined(mysql_db_password) then ("--mysql-db-password " +  '"' + mysql_db_password + '"') else ""} \
      ~{if defined(mysql_db_name) then ("--mysql-db-name " +  '"' + mysql_db_name + '"') else ""} \
      ~{if defined(postgresql_db_ip) then ("--postgresql-db-ip " +  '"' + postgresql_db_ip + '"') else ""} \
      ~{if defined(postgresql_db_port) then ("--postgresql-db-port " +  '"' + postgresql_db_port + '"') else ""} \
      ~{if defined(postgresql_db_user) then ("--postgresql-db-user " +  '"' + postgresql_db_user + '"') else ""} \
      ~{if defined(postgresql_db_password) then ("--postgresql-db-password " +  '"' + postgresql_db_password + '"') else ""} \
      ~{if defined(postgresql_db_name) then ("--postgresql-db-name " +  '"' + postgresql_db_name + '"') else ""} \
      ~{if defined(cromwell) then ("--cromwell " +  '"' + cromwell + '"') else ""} \
      ~{if defined(max_concurrent_tasks) then ("--max-concurrent-tasks " +  '"' + max_concurrent_tasks + '"') else ""} \
      ~{if defined(max_concurrent_workflows) then ("--max-concurrent-workflows " +  '"' + max_concurrent_workflows + '"') else ""} \
      ~{if (disable_call_caching) then "--disable-call-caching" else ""} \
      ~{if defined(backend_file) then ("--backend-file " +  '"' + backend_file + '"') else ""} \
      ~{if (soft_glob_output) then "--soft-glob-output" else ""} \
      ~{if (local_hash_strat) then "--local-hash-strat" else ""} \
      ~{if defined(local_out_dir) then ("--local-out-dir " +  '"' + local_out_dir + '"') else ""} \
      ~{if defined(gcp_prj) then ("--gcp-prj " +  '"' + gcp_prj + '"') else ""} \
      ~{if defined(gcp_memory_retry_error_keys) then ("--gcp-memory-retry-error-keys " +  '"' + gcp_memory_retry_error_keys + '"') else ""} \
      ~{if defined(gcp_memory_retry_multiplier) then ("--gcp-memory-retry-multiplier " +  '"' + gcp_memory_retry_multiplier + '"') else ""} \
      ~{if defined(gcp_region) then ("--gcp-region " +  '"' + gcp_region + '"') else ""} \
      ~{if defined(gcp_call_caching_dup_strat) then ("--gcp-call-caching-dup-strat " +  '"' + gcp_call_caching_dup_strat + '"') else ""} \
      ~{if defined(out_gcs_bucket) then ("--out-gcs-bucket " +  '"' + out_gcs_bucket + '"') else ""} \
      ~{if defined(aws_batch_arn) then ("--aws-batch-arn " +  '"' + aws_batch_arn + '"') else ""} \
      ~{if defined(aws_region) then ("--aws-region " +  '"' + aws_region + '"') else ""} \
      ~{if defined(out_s_three_bucket) then ("--out-s3-bucket " +  '"' + out_s_three_bucket + '"') else ""} \
      ~{if (use_google_cloud_life_sciences) then "--use-google-cloud-life-sciences" else ""} \
      ~{if defined(gcp_zones) then ("--gcp-zones " +  '"' + gcp_zones + '"') else ""}
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
    java_heap_server: "Cromwell Java heap size for \\\"server\\\" mode (java -Xmx)"
    cromwell_stdout: "Local file to write STDOUT of Cromwell Java process\\nto. This is for Cromwell (not for Caper's logging\\nsystem). Note that STDERR is redirected to STDOUT."
    backend: "Backend to run a workflow"
    dry_run: "Caper localizes remote files and validates WDL but\\ndoes not run/submit a pipeline."
    local_loc_dir: "Temporary directory to store Cromwell's intermediate\\nbackend files. These files include backend.conf,\\nworkflow_opts.json, imports.zip. and localized input\\nJSON files due to deepcopying (recursive\\nlocalization). Cromwell's MySQL/PostgreSQL DB password\\ncan be exposed on backend.conf on this directory.\\nTherefore, DO NOT USE /tmp HERE. This directory is\\nalso used for storing cached files for\\nlocal/slurm/sge/pbs backends."
    tmp_gcs_bucket: "Temporary directory to store cached files for gcp\\nbackend. e.g. gs://my-bucket/caper-cache-dir."
    tmp_s_three_bucket: "Temporary directory to store cached files for aws\\nbackend. e.g. s3://my-bucket/caper-cache-dir."
    db: "Cromwell metadata database type"
    db_timeout: "Milliseconds to wait for DB connection."
    file_db: "Default DB file for Cromwell's built-in HyperSQL\\ndatabase."
    mysql_db_ip: "MySQL Database IP address (e.g. localhost)"
    mysql_db_port: "MySQL Database TCP/IP port (e.g. 3306)"
    mysql_db_user: "MySQL DB username"
    mysql_db_password: "MySQL DB password"
    mysql_db_name: "MySQL DB name for Cromwell"
    postgresql_db_ip: "PostgreSQL DB IP address (e.g. localhost)"
    postgresql_db_port: "PostgreSQL DB TCP/IP port (e.g. 5432)"
    postgresql_db_user: "PostgreSQL DB username"
    postgresql_db_password: "PostgreSQL DB password"
    postgresql_db_name: "PostgreSQL DB name for Cromwell"
    cromwell: "Path or URL for Cromwell JAR file"
    max_concurrent_tasks: "Number of concurrent tasks. \\\"config.concurrent-job-\\nlimit\\\" in Cromwell backend configuration for each\\nbackend"
    max_concurrent_workflows: "Number of concurrent workflows. \\\"system.max-\\nconcurrent-workflows\\\" in backend configuration"
    disable_call_caching: "Disable Cromwell's call caching, which re-uses outputs\\nfrom previous workflows"
    backend_file: "Custom Cromwell backend configuration file to override\\nall"
    soft_glob_output: "Use soft-linking when globbing outputs for a\\nfilesystem that does not allow hard-linking. e.g.\\nbeeGFS. This flag does not work with backends based on\\na Docker container. i.e. gcp and aws. Also, it does\\nnot work with local backends (local/slurm/sge/pbs)\\nwith --. However, it works fine with --singularity."
    local_hash_strat: "{file,path,path+modtime}\\nFile hashing strategy for call caching. For local\\nbackends (local/slurm/sge/pbs) only. file: use md5sum\\nhash (slow), path: use path only, path+modtime\\n(default): use path + mtime."
    local_out_dir: "Output directory path for local backend. Cloud\\nbackends (gcp, aws) use different output directories.\\nFor gcp, define --gcp-out-dir. For aws, define --aws-\\nout-dir."
    gcp_prj: "GC project"
    gcp_memory_retry_error_keys: "If an error caught by these comma-separated keys\\noccurs, then increase memory by --gcp-memory-retry-\\nmultiplier for retrials controlled by --max-retries.\\nSee https://cromwell.readthedocs.io/en/stable/backends\\n/Google/ for details."
    gcp_memory_retry_multiplier: "If an error caught by --gcp-memory-retry-error-keys\\noccurs, then increase memory by this for retrials\\ncontrolled by --max-retries. See https://cromwell.read\\nthedocs.io/en/stable/backends/Google/ for details."
    gcp_region: "GCP region for Google Cloud Life Sciences API. This is\\nused only when --use-google-cloud-life-sciences is\\ndefined."
    gcp_call_caching_dup_strat: "Duplication strategy for call-cached outputs for GCP\\nbackend: copy: make a copy, reference: refer to old\\noutput in metadata.json."
    out_gcs_bucket: "Output directory path for GCP backend. e.g. gs://my-\\nbucket/my-output."
    aws_batch_arn: "ARN for AWS Batch"
    aws_region: "AWS region (e.g. us-west-1)"
    out_s_three_bucket: "Output path on S3 bucket for AWS backend. e.g.\\ns3://my-bucket/my-output."
    use_google_cloud_life_sciences: "Use Google Cloud Life Sciences API (v2beta) instead of\\ndeprecated Genomics API (v2alpha1).Life Sciences API\\nrequires only one region specified withgcp-region.\\ngcp-zones will be ignored since it is for Genomics\\nAPI.See https://cloud.google.com/life-\\nsciences/docs/concepts/locations for supported\\nregions."
    gcp_zones: "Comma-separated GCP zones used for Genomics API. (e.g.\\nus-west1-b,us-central1-b). If you use --use-google-\\ncloud-life-sciences then define --gcp-region instead.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_local_out_dir = "${in_local_out_dir}"
    File out_out_gcs_bucket = "${in_out_gcs_bucket}"
    File out_out_s_three_bucket = "${in_out_s_three_bucket}"
  }
}