version 1.0

task CaperServer {
  input {
    Boolean? dry_run
    Boolean? debug
    String? port
    String? ip
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
    Int? java_heap_server
    String? backend
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
    Int? max_retries
    Boolean? disable_call_caching
    File? backend_file
    Boolean? soft_glob_output
    Directory? out_dir
    Directory? tmp_dir
    String? gcp_prj
    Int? gcp_zones
    String? gcp_call_caching_dup_strat
    String? out_gcs_bucket
    String? tmp_gcs_bucket
    String? aws_batch_arn
    Int? aws_region
    Int? out_s_three_bucket
    Int? tmp_s_three_bucket
  }
  command <<<
    caper server \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
      ~{if defined(java_heap_server) then ("--java-heap-server " +  '"' + java_heap_server + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
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
      ~{if defined(max_retries) then ("--max-retries " +  '"' + max_retries + '"') else ""} \
      ~{if (disable_call_caching) then "--disable-call-caching" else ""} \
      ~{if defined(backend_file) then ("--backend-file " +  '"' + backend_file + '"') else ""} \
      ~{if (soft_glob_output) then "--soft-glob-output" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(gcp_prj) then ("--gcp-prj " +  '"' + gcp_prj + '"') else ""} \
      ~{if defined(gcp_zones) then ("--gcp-zones " +  '"' + gcp_zones + '"') else ""} \
      ~{if defined(gcp_call_caching_dup_strat) then ("--gcp-call-caching-dup-strat " +  '"' + gcp_call_caching_dup_strat + '"') else ""} \
      ~{if defined(out_gcs_bucket) then ("--out-gcs-bucket " +  '"' + out_gcs_bucket + '"') else ""} \
      ~{if defined(tmp_gcs_bucket) then ("--tmp-gcs-bucket " +  '"' + tmp_gcs_bucket + '"') else ""} \
      ~{if defined(aws_batch_arn) then ("--aws-batch-arn " +  '"' + aws_batch_arn + '"') else ""} \
      ~{if defined(aws_region) then ("--aws-region " +  '"' + aws_region + '"') else ""} \
      ~{if defined(out_s_three_bucket) then ("--out-s3-bucket " +  '"' + out_s_three_bucket + '"') else ""} \
      ~{if defined(tmp_s_three_bucket) then ("--tmp-s3-bucket " +  '"' + tmp_s_three_bucket + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of\\na server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A\\nheartbeat file older than this interval will be\\nignored."
    java_heap_server: "Cromwell Java heap size for \\\"server\\\" mode (java -Xmx)"
    backend: "Backend to run a workflow"
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
    max_retries: "Number of retries for failing tasks. equivalent to\\n\\\"maxRetries\\\" in workflow options JSON file."
    disable_call_caching: "Disable Cromwell's call caching, which re-uses outputs\\nfrom previous workflows"
    backend_file: "Custom Cromwell backend configuration file to override\\nall"
    soft_glob_output: "Use soft-linking when globbing outputs for a\\nfilesystem that does not allow hard-linking. e.g.\\nbeeGFS. This flag does not work with backends based on\\na Docker container. i.e. gcp and aws. Also, it does\\nnot work with local backends (local/slurm/sge/pbs)\\nwith --docker. However, it works fine with\\n--singularity."
    out_dir: "Output directory for local backend"
    tmp_dir: "Temporary directory for local backend"
    gcp_prj: "GC project"
    gcp_zones: "GCP zones (e.g. us-west1-b,us-central1-b)"
    gcp_call_caching_dup_strat: "Duplication strategy for call-cached outputs for GCP\\nbackend: copy: make a copy, reference: refer to old\\noutput in metadata.json."
    out_gcs_bucket: "Output GCS bucket for GCP backend"
    tmp_gcs_bucket: "Temporary GCS bucket for GCP backend"
    aws_batch_arn: "ARN for AWS Batch"
    aws_region: "AWS region (e.g. us-west-1)"
    out_s_three_bucket: "Output S3 bucket for AWS backend"
    tmp_s_three_bucket: "Temporary S3 bucket for AWS backend\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}