class: CommandLineTool
id: caper_server.cwl
inputs:
- id: in_conf
  doc: Specify config file
  type: File?
  inputBinding:
    prefix: --conf
- id: in_debug
  doc: Prints all logs >= DEBUG level
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_gcp_service_account_key_json
  doc: "Secret key JSON file for Google Cloud Platform service\naccount. This service\
    \ account should have enough\npermission to Storage for client functions and\n\
    Storage/Compute Engine/Genomics API/Life Sciences API\nfor server/runner functions."
  type: File?
  inputBinding:
    prefix: --gcp-service-account-key-json
- id: in_port
  doc: Port for Caper server
  type: string?
  inputBinding:
    prefix: --port
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
- id: in_cromwell_stdout
  doc: "Local file to write STDOUT of Cromwell Java process\nto. This is for Cromwell\
    \ (not for Caper's logging\nsystem). Note that STDERR is redirected to STDOUT."
  type: File?
  inputBinding:
    prefix: --cromwell-stdout
- id: in_backend
  doc: Backend to run a workflow
  type: string?
  inputBinding:
    prefix: --backend
- id: in_dry_run
  doc: "Caper localizes remote files and validates WDL but\ndoes not run/submit a\
    \ pipeline."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_local_loc_dir
  doc: "Temporary directory to store Cromwell's intermediate\nbackend files. These\
    \ files include backend.conf,\nworkflow_opts.json, imports.zip. and localized\
    \ input\nJSON files due to deepcopying (recursive\nlocalization). Cromwell's MySQL/PostgreSQL\
    \ DB password\ncan be exposed on backend.conf on this directory.\nTherefore, DO\
    \ NOT USE /tmp HERE. This directory is\nalso used for storing cached files for\n\
    local/slurm/sge/pbs backends."
  type: Directory?
  inputBinding:
    prefix: --local-loc-dir
- id: in_tmp_gcs_bucket
  doc: "Temporary directory to store cached files for gcp\nbackend. e.g. gs://my-bucket/caper-cache-dir."
  type: Directory?
  inputBinding:
    prefix: --tmp-gcs-bucket
- id: in_tmp_s_three_bucket
  doc: "Temporary directory to store cached files for aws\nbackend. e.g. s3://my-bucket/caper-cache-dir."
  type: long?
  inputBinding:
    prefix: --tmp-s3-bucket
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
    \ (local/slurm/sge/pbs)\nwith --. However, it works fine with --singularity."
  type: boolean?
  inputBinding:
    prefix: --soft-glob-output
- id: in_local_hash_strat
  doc: "{file,path,path+modtime}\nFile hashing strategy for call caching. For local\n\
    backends (local/slurm/sge/pbs) only. file: use md5sum\nhash (slow), path: use\
    \ path only, path+modtime\n(default): use path + mtime."
  type: boolean?
  inputBinding:
    prefix: --local-hash-strat
- id: in_local_out_dir
  doc: "Output directory path for local backend. Cloud\nbackends (gcp, aws) use different\
    \ output directories.\nFor gcp, define --gcp-out-dir. For aws, define --aws-\n\
    out-dir."
  type: File?
  inputBinding:
    prefix: --local-out-dir
- id: in_gcp_prj
  doc: GC project
  type: string?
  inputBinding:
    prefix: --gcp-prj
- id: in_gcp_memory_retry_error_keys
  doc: "If an error caught by these comma-separated keys\noccurs, then increase memory\
    \ by --gcp-memory-retry-\nmultiplier for retrials controlled by --max-retries.\n\
    See https://cromwell.readthedocs.io/en/stable/backends\n/Google/ for details."
  type: long?
  inputBinding:
    prefix: --gcp-memory-retry-error-keys
- id: in_gcp_memory_retry_multiplier
  doc: "If an error caught by --gcp-memory-retry-error-keys\noccurs, then increase\
    \ memory by this for retrials\ncontrolled by --max-retries. See https://cromwell.read\n\
    thedocs.io/en/stable/backends/Google/ for details."
  type: long?
  inputBinding:
    prefix: --gcp-memory-retry-multiplier
- id: in_gcp_region
  doc: "GCP region for Google Cloud Life Sciences API. This is\nused only when --use-google-cloud-life-sciences\
    \ is\ndefined."
  type: string?
  inputBinding:
    prefix: --gcp-region
- id: in_gcp_call_caching_dup_strat
  doc: "Duplication strategy for call-cached outputs for GCP\nbackend: copy: make\
    \ a copy, reference: refer to old\noutput in metadata.json."
  type: string?
  inputBinding:
    prefix: --gcp-call-caching-dup-strat
- id: in_out_gcs_bucket
  doc: "Output directory path for GCP backend. e.g. gs://my-\nbucket/my-output."
  type: File?
  inputBinding:
    prefix: --out-gcs-bucket
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
  doc: "Output path on S3 bucket for AWS backend. e.g.\ns3://my-bucket/my-output."
  type: File?
  inputBinding:
    prefix: --out-s3-bucket
- id: in_use_google_cloud_life_sciences
  doc: "Use Google Cloud Life Sciences API (v2beta) instead of\ndeprecated Genomics\
    \ API (v2alpha1).Life Sciences API\nrequires only one region specified withgcp-region.\n\
    gcp-zones will be ignored since it is for Genomics\nAPI.See https://cloud.google.com/life-\n\
    sciences/docs/concepts/locations for supported\nregions."
  type: boolean?
  inputBinding:
    prefix: --use-google-cloud-life-sciences
- id: in_gcp_zones
  doc: "Comma-separated GCP zones used for Genomics API. (e.g.\nus-west1-b,us-central1-b).\
    \ If you use --use-google-\ncloud-life-sciences then define --gcp-region instead.\n"
  type: long?
  inputBinding:
    prefix: --gcp-zones
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_local_out_dir
  doc: "Output directory path for local backend. Cloud\nbackends (gcp, aws) use different\
    \ output directories.\nFor gcp, define --gcp-out-dir. For aws, define --aws-\n\
    out-dir."
  type: File?
  outputBinding:
    glob: $(inputs.in_local_out_dir)
- id: out_out_gcs_bucket
  doc: "Output directory path for GCP backend. e.g. gs://my-\nbucket/my-output."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_gcs_bucket)
- id: out_out_s_three_bucket
  doc: "Output path on S3 bucket for AWS backend. e.g.\ns3://my-bucket/my-output."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_s_three_bucket)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/caper:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- caper
- server
