class: CommandLineTool
id: caper_server.cwl
inputs:
- id: dry_run
  doc: Caper does not take any action.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: debug
  doc: Prints all logs >= DEBUG level
  type: boolean
  inputBinding:
    prefix: --debug
- id: port
  doc: Port for Caper server
  type: string
  inputBinding:
    prefix: --port
- id: ip
  doc: IP address for Caper server
  type: string
  inputBinding:
    prefix: --ip
- id: no_server_heartbeat
  doc: Disable server heartbeat file.
  type: boolean
  inputBinding:
    prefix: --no-server-heartbeat
- id: server_heartbeat_file
  doc: Heartbeat file for Caper clients to get IP and port of a server
  type: string
  inputBinding:
    prefix: --server-heartbeat-file
- id: server_heartbeat_timeout
  doc: Timeout for a heartbeat file in Milliseconds. A heartbeat file older than this
    interval will be ignored.
  type: string
  inputBinding:
    prefix: --server-heartbeat-timeout
- id: java_heap_server
  doc: Cromwell Java heap size for "server" mode (java -Xmx)
  type: string
  inputBinding:
    prefix: --java-heap-server
- id: backend
  doc: Backend to run a workflow
  type: string
  inputBinding:
    prefix: --backend
- id: db
  doc: Cromwell metadata database type
  type: string
  inputBinding:
    prefix: --db
- id: db_timeout
  doc: Milliseconds to wait for DB connection.
  type: string
  inputBinding:
    prefix: --db-timeout
- id: file_db
  doc: Default DB file for Cromwell's built-in HyperSQL database.
  type: File
  inputBinding:
    prefix: --file-db
- id: mysql_db_ip
  doc: MySQL Database IP address (e.g. localhost)
  type: string
  inputBinding:
    prefix: --mysql-db-ip
- id: mysql_db_port
  doc: MySQL Database TCP/IP port (e.g. 3306)
  type: string
  inputBinding:
    prefix: --mysql-db-port
- id: mysql_db_user
  doc: MySQL DB username
  type: string
  inputBinding:
    prefix: --mysql-db-user
- id: mysql_db_password
  doc: MySQL DB password
  type: string
  inputBinding:
    prefix: --mysql-db-password
- id: mysql_db_name
  doc: MySQL DB name for Cromwell
  type: string
  inputBinding:
    prefix: --mysql-db-name
- id: postgresql_db_ip
  doc: PostgreSQL DB IP address (e.g. localhost)
  type: string
  inputBinding:
    prefix: --postgresql-db-ip
- id: postgresql_db_port
  doc: PostgreSQL DB TCP/IP port (e.g. 5432)
  type: string
  inputBinding:
    prefix: --postgresql-db-port
- id: postgresql_db_user
  doc: PostgreSQL DB username
  type: string
  inputBinding:
    prefix: --postgresql-db-user
- id: postgresql_db_password
  doc: PostgreSQL DB password
  type: string
  inputBinding:
    prefix: --postgresql-db-password
- id: postgresql_db_name
  doc: PostgreSQL DB name for Cromwell
  type: string
  inputBinding:
    prefix: --postgresql-db-name
- id: cromwell
  doc: Path or URL for Cromwell JAR file
  type: string
  inputBinding:
    prefix: --cromwell
- id: max_concurrent_tasks
  doc: Number of concurrent tasks. "config.concurrent-job- limit" in Cromwell backend
    configuration for each backend
  type: long
  inputBinding:
    prefix: --max-concurrent-tasks
- id: max_concurrent_workflows
  doc: Number of concurrent workflows. "system.max- concurrent-workflows" in backend
    configuration
  type: long
  inputBinding:
    prefix: --max-concurrent-workflows
- id: max_retries
  doc: Number of retries for failing tasks. equivalent to "maxRetries" in workflow
    options JSON file.
  type: long
  inputBinding:
    prefix: --max-retries
- id: disable_call_caching
  doc: Disable Cromwell's call caching, which re-uses outputs from previous workflows
  type: boolean
  inputBinding:
    prefix: --disable-call-caching
- id: backend_file
  doc: Custom Cromwell backend configuration file to override all
  type: string
  inputBinding:
    prefix: --backend-file
- id: soft_glob_output
  doc: Use soft-linking when globbing outputs for a filesystem that does not allow
    hard-linking. e.g. beeGFS. This flag does not work with backends based on a Docker
    container. i.e. gcp and aws. Also, it does not work with local backends (local/slurm/sge/pbs)
    with --docker. However, it works fine with --singularity.
  type: boolean
  inputBinding:
    prefix: --soft-glob-output
- id: out_dir
  doc: Output directory for local backend
  type: string
  inputBinding:
    prefix: --out-dir
- id: tmp_dir
  doc: Temporary directory for local backend
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: gcp_prj
  doc: GC project
  type: string
  inputBinding:
    prefix: --gcp-prj
- id: gcp_zones
  doc: GCP zones (e.g. us-west1-b,us-central1-b)
  type: string
  inputBinding:
    prefix: --gcp-zones
- id: gcp_call_caching_dup_strat
  doc: 'Duplication strategy for call-cached outputs for GCP backend: copy: make a
    copy, reference: refer to old output in metadata.json.'
  type: string
  inputBinding:
    prefix: --gcp-call-caching-dup-strat
- id: out_gcs_bucket
  doc: Output GCS bucket for GCP backend
  type: string
  inputBinding:
    prefix: --out-gcs-bucket
- id: tmp_gcs_bucket
  doc: Temporary GCS bucket for GCP backend
  type: string
  inputBinding:
    prefix: --tmp-gcs-bucket
- id: aws_batch_arn
  doc: ARN for AWS Batch
  type: string
  inputBinding:
    prefix: --aws-batch-arn
- id: aws_region
  doc: AWS region (e.g. us-west-1)
  type: string
  inputBinding:
    prefix: --aws-region
- id: out_s3_bucket
  doc: Output S3 bucket for AWS backend
  type: string
  inputBinding:
    prefix: --out-s3-bucket
- id: tmp_s3_bucket
  doc: Temporary S3 bucket for AWS backend
  type: string
  inputBinding:
    prefix: --tmp-s3-bucket
outputs: []
cwlVersion: v1.1
baseCommand:
- caper
- server
