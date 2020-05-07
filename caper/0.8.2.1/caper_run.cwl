class: CommandLineTool
id: caper_run.cwl
inputs:
- id: wdl
  doc: 'Path, URL or URI for WDL script Example: /scratch/my.wdl, gs://some/where/our.wdl,
    http://hello.com/world/your.wdl'
  type: string
  inputBinding:
    position: 0
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
- id: inputs
  doc: Workflow inputs JSON file
  type: string
  inputBinding:
    prefix: --inputs
- id: options
  doc: Workflow options JSON file
  type: string
  inputBinding:
    prefix: --options
- id: labels
  doc: Workflow labels JSON file
  type: string
  inputBinding:
    prefix: --labels
- id: imports
  doc: Zip file of imported subworkflows
  type: string
  inputBinding:
    prefix: --imports
- id: str_label
  doc: Caper's special label for a workflow This label will be added to a workflow
    labels JSON file as a value for a key "caper-label". DO NOT USE IRREGULAR CHARACTERS.
    USE LETTERS, NUMBERS, DASHES AND UNDERSCORES ONLY (^[A-Za-z0-9\-\_]+$) since this
    label is used to compose a path for workflow's temporary directory (tmp_dir/label/timestamp/)
  type: string
  inputBinding:
    prefix: --str-label
- id: hold
  doc: Put a hold on a workflow when submitted to a Cromwell server.
  type: boolean
  inputBinding:
    prefix: --hold
- id: singularity_cache_dir
  doc: Singularity cache directory. Equivalent to exporting an environment variable
    SINGULARITY_CACHEDIR. Define it to prevent repeatedly building a singularity image
    for every pipeline task
  type: string
  inputBinding:
    prefix: --singularity-cachedir
- id: use_gs_util_for_s3
  doc: Use gsutil CLI for direct trasnfer between S3 and GCS buckets. Otherwise, such
    file transfer will stream through local machine. Make sure that gsutil is installed
    on your system and it has access to credentials for AWS (e.g. ~/.boto or ~/.aws/credentials).
  type: boolean
  inputBinding:
    prefix: --use-gsutil-for-s3
- id: no_deepcopy
  doc: (IMPORTANT) --deepcopy has been deprecated. Deepcopying is now activated by
    default. This flag disables deepcopy for JSON (.json), TSV (.tsv) and CSV (.csv)
    files specified in an input JSON file (--inputs). Find all path/URI string values
    in an input JSON file and make copies of files on a local/remote storage for a
    target backend. Make sure that you have installed gsutil for GCS and aws for S3.
  type: boolean
  inputBinding:
    prefix: --no-deepcopy
- id: ignore_wom_tool
  doc: Ignore warnings from womtool.jar.
  type: boolean
  inputBinding:
    prefix: --ignore-womtool
- id: wom_tool
  doc: Path or URL for Cromwell's womtool JAR file
  type: string
  inputBinding:
    prefix: --womtool
- id: metadata_output
  doc: An optional directory path to output metadata JSON file
  type: string
  inputBinding:
    prefix: --metadata-output
- id: java_heap_run
  doc: Cromwell Java heap size for "run" mode (java -Xmx)
  type: string
  inputBinding:
    prefix: --java-heap-run
- id: backend
  doc: Backend to run a workflow
  type: string
  inputBinding:
    prefix: --backend
- id: docker
  doc: '[DOCKER [DOCKER ...]] URI for Docker image (e.g. ubuntu:latest). This can
    also be used as a flag to use Docker image address defined in your WDL file as
    a comment ("#CAPER docker").'
  type: boolean
  inputBinding:
    prefix: --docker
- id: singularity
  doc: '[SINGULARITY [SINGULARITY ...]] URI or path for Singularity image (e.g. ~/.singularity/ubuntu-latest.simg,
    docker://ubuntu:latest, shub://vsoch/hello-world). This can also be used as a
    flag to use Docker image address defined in your WDL file as a comment ("#CAPER
    singularity").'
  type: boolean
  inputBinding:
    prefix: --singularity
- id: no_build_singularity
  doc: Do not build singularity image before running a workflow.
  type: boolean
  inputBinding:
    prefix: --no-build-singularity
- id: slur_m_partition
  doc: SLURM partition
  type: string
  inputBinding:
    prefix: --slurm-partition
- id: slur_m_account
  doc: SLURM account
  type: string
  inputBinding:
    prefix: --slurm-account
- id: slur_m_extra_param
  doc: SLURM extra parameters. Must be double-quoted
  type: string
  inputBinding:
    prefix: --slurm-extra-param
- id: sge_pe
  doc: SGE parallel environment. Check with "qconf -spl"
  type: string
  inputBinding:
    prefix: --sge-pe
- id: sge_queue
  doc: SGE queue. Check with "qconf -sql"
  type: string
  inputBinding:
    prefix: --sge-queue
- id: sge_extra_param
  doc: SGE extra parameters. Must be double-quoted
  type: string
  inputBinding:
    prefix: --sge-extra-param
- id: pbs_queue
  doc: PBS queue
  type: string
  inputBinding:
    prefix: --pbs-queue
- id: pbs_extra_param
  doc: PBS extra parameters. Must be double-quoted
  type: string
  inputBinding:
    prefix: --pbs-extra-param
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
- run
