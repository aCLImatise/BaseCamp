class: CommandLineTool
id: caper_server.cwl
inputs:
- id: in_dry_run
  doc: Caper does not take any action.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_debug
  doc: Prints all logs >= DEBUG level
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_port
  doc: Port for Caper server
  type: string?
  inputBinding:
    prefix: --port
- id: in_ip
  doc: IP address for Caper server
  type: string?
  inputBinding:
    prefix: --ip
- id: in_no_server_heartbeat
  doc: Disable server heartbeat file.
  type: boolean?
  inputBinding:
    prefix: --no-server-heartbeat
- id: in_server_heartbeat_file
  doc: "Heartbeat file for Caper clients to get IP and port of\na server"
  type: File?
  inputBinding:
    prefix: --server-heartbeat-file
- id: in_server_heartbeat_timeout
  doc: "Timeout for a heartbeat file in Milliseconds. A\nheartbeat file older than\
    \ this interval will be\nignored."
  type: File?
  inputBinding:
    prefix: --server-heartbeat-timeout
- id: in_java_heap_server
  doc: Cromwell Java heap size for "server" mode (java -Xmx)
  type: long?
  inputBinding:
    prefix: --java-heap-server
- id: in_backend
  doc: Backend to run a workflow
  type: string?
  inputBinding:
    prefix: --backend
- id: in_db
  doc: Cromwell metadata database type
  type: string?
  inputBinding:
    prefix: --db
- id: in_db_timeout
  doc: Milliseconds to wait for DB connection.
  type: string?
  inputBinding:
    prefix: --db-timeout
- id: in_file_db
  doc: "Default DB file for Cromwell's built-in HyperSQL\ndatabase."
  type: File?
  inputBinding:
    prefix: --file-db
- id: in_mysql_db_ip
  doc: MySQL Database IP address (e.g. localhost)
  type: string?
  inputBinding:
    prefix: --mysql-db-ip
- id: in_mysql_db_port
  doc: MySQL Database TCP/IP port (e.g. 3306)
  type: long?
  inputBinding:
    prefix: --mysql-db-port
- id: in_mysql_db_user
  doc: MySQL DB username
  type: string?
  inputBinding:
    prefix: --mysql-db-user
- id: in_mysql_db_password
  doc: MySQL DB password
  type: string?
  inputBinding:
    prefix: --mysql-db-password
- id: in_mysql_db_name
  doc: MySQL DB name for Cromwell
  type: string?
  inputBinding:
    prefix: --mysql-db-name
- id: in_postgresql_db_ip
  doc: PostgreSQL DB IP address (e.g. localhost)
  type: string?
  inputBinding:
    prefix: --postgresql-db-ip
- id: in_postgresql_db_port
  doc: PostgreSQL DB TCP/IP port (e.g. 5432)
  type: long?
  inputBinding:
    prefix: --postgresql-db-port
- id: in_postgresql_db_user
  doc: PostgreSQL DB username
  type: string?
  inputBinding:
    prefix: --postgresql-db-user
- id: in_postgresql_db_password
  doc: PostgreSQL DB password
  type: string?
  inputBinding:
    prefix: --postgresql-db-password
- id: in_postgresql_db_name
  doc: PostgreSQL DB name for Cromwell
  type: string?
  inputBinding:
    prefix: --postgresql-db-name
- id: in_cromwell
  doc: Path or URL for Cromwell JAR file
  type: File?
  inputBinding:
    prefix: --cromwell
- id: in_max_concurrent_tasks
  doc: "Number of concurrent tasks. \"config.concurrent-job-\nlimit\" in Cromwell\
    \ backend configuration for each\nbackend"
  type: long?
  inputBinding:
    prefix: --max-concurrent-tasks
- id: in_max_concurrent_workflows
  doc: "Number of concurrent workflows. \"system.max-\nconcurrent-workflows\" in backend\
    \ configuration"
  type: long?
  inputBinding:
    prefix: --max-concurrent-workflows
- id: in_max_retries
  doc: "Number of retries for failing tasks. equivalent to\n\"maxRetries\" in workflow\
    \ options JSON file."
  type: long?
  inputBinding:
    prefix: --max-retries
- id: in_disable_call_caching
  doc: "Disable Cromwell's call caching, which re-uses outputs\nfrom previous workflows"
  type: boolean?
  inputBinding:
    prefix: --disable-call-caching
- id: in_backend_file
  doc: "Custom Cromwell backend configuration file to override\nall"
  type: File?
  inputBinding:
    prefix: --backend-file
- id: in_soft_glob_output
  doc: "Use soft-linking when globbing outputs for a\nfilesystem that does not allow\
    \ hard-linking. e.g.\nbeeGFS. This flag does not work with backends based on\n\
    a Docker container. i.e. gcp and aws. Also, it does\nnot work with local backends\
    \ (local/slurm/sge/pbs)\nwith --docker. However, it works fine with\n--singularity."
  type: boolean?
  inputBinding:
    prefix: --soft-glob-output
- id: in_out_dir
  doc: Output directory for local backend
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_tmp_dir
  doc: Temporary directory for local backend
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_gcp_prj
  doc: GC project
  type: string?
  inputBinding:
    prefix: --gcp-prj
- id: in_gcp_zones
  doc: GCP zones (e.g. us-west1-b,us-central1-b)
  type: long?
  inputBinding:
    prefix: --gcp-zones
- id: in_gcp_call_caching_dup_strat
  doc: "Duplication strategy for call-cached outputs for GCP\nbackend: copy: make\
    \ a copy, reference: refer to old\noutput in metadata.json."
  type: string?
  inputBinding:
    prefix: --gcp-call-caching-dup-strat
- id: in_out_gcs_bucket
  doc: Output GCS bucket for GCP backend
  type: string?
  inputBinding:
    prefix: --out-gcs-bucket
- id: in_tmp_gcs_bucket
  doc: Temporary GCS bucket for GCP backend
  type: string?
  inputBinding:
    prefix: --tmp-gcs-bucket
- id: in_aws_batch_arn
  doc: ARN for AWS Batch
  type: string?
  inputBinding:
    prefix: --aws-batch-arn
- id: in_aws_region
  doc: AWS region (e.g. us-west-1)
  type: long?
  inputBinding:
    prefix: --aws-region
- id: in_out_s_three_bucket
  doc: Output S3 bucket for AWS backend
  type: long?
  inputBinding:
    prefix: --out-s3-bucket
- id: in_tmp_s_three_bucket
  doc: "Temporary S3 bucket for AWS backend\n"
  type: long?
  inputBinding:
    prefix: --tmp-s3-bucket
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory for local backend
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- caper
- server
