version 1.0

task CaperRun {
  input {
    Boolean? dry_run
    Boolean? debug
    String? inputs
    String? options
    String? labels
    String? imports
    String? str_label
    Boolean? hold
    String? singularity_cache_dir
    Boolean? use_gs_util_for_s_three
    Boolean? no_deepcopy
    Boolean? ignore_wom_tool
    String? wom_tool
    String? metadata_output
    String? java_heap_run
    String? backend
    Boolean? docker
    Boolean? singularity
    Boolean? no_build_singularity
    String? slur_m_partition
    String? slur_m_account
    String? slur_m_extra_param
    String? sge_pe
    String? sge_queue
    String? sge_extra_param
    String? pbs_queue
    String? pbs_extra_param
    String? db
    String? db_timeout
    File? file_db
    String? mysql_db_ip
    String? mysql_db_port
    String? mysql_db_user
    String? mysql_db_password
    String? mysql_db_name
    String? postgresql_db_ip
    String? postgresql_db_port
    String? postgresql_db_user
    String? postgresql_db_password
    String? postgresql_db_name
    String? cromwell
    Int? max_concurrent_tasks
    Int? max_concurrent_workflows
    Int? max_retries
    Boolean? disable_call_caching
    String? backend_file
    Boolean? soft_glob_output
    String? out_dir
    String? tmp_dir
    String? gcp_prj
    String? gcp_zones
    String? gcp_call_caching_dup_strat
    String? out_gcs_bucket
    String? tmp_gcs_bucket
    String? aws_batch_arn
    String? aws_region
    String? out_s_three_bucket
    String? tmp_s_three_bucket
    String wdl
  }
  command <<<
    caper run \
      ~{wdl} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--debug" false="" debug} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(options) then ("--options " +  '"' + options + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(imports) then ("--imports " +  '"' + imports + '"') else ""} \
      ~{if defined(str_label) then ("--str-label " +  '"' + str_label + '"') else ""} \
      ~{true="--hold" false="" hold} \
      ~{if defined(singularity_cache_dir) then ("--singularity-cachedir " +  '"' + singularity_cache_dir + '"') else ""} \
      ~{true="--use-gsutil-for-s3" false="" use_gs_util_for_s_three} \
      ~{true="--no-deepcopy" false="" no_deepcopy} \
      ~{true="--ignore-womtool" false="" ignore_wom_tool} \
      ~{if defined(wom_tool) then ("--womtool " +  '"' + wom_tool + '"') else ""} \
      ~{if defined(metadata_output) then ("--metadata-output " +  '"' + metadata_output + '"') else ""} \
      ~{if defined(java_heap_run) then ("--java-heap-run " +  '"' + java_heap_run + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{true="--docker" false="" docker} \
      ~{true="--singularity" false="" singularity} \
      ~{true="--no-build-singularity" false="" no_build_singularity} \
      ~{if defined(slur_m_partition) then ("--slurm-partition " +  '"' + slur_m_partition + '"') else ""} \
      ~{if defined(slur_m_account) then ("--slurm-account " +  '"' + slur_m_account + '"') else ""} \
      ~{if defined(slur_m_extra_param) then ("--slurm-extra-param " +  '"' + slur_m_extra_param + '"') else ""} \
      ~{if defined(sge_pe) then ("--sge-pe " +  '"' + sge_pe + '"') else ""} \
      ~{if defined(sge_queue) then ("--sge-queue " +  '"' + sge_queue + '"') else ""} \
      ~{if defined(sge_extra_param) then ("--sge-extra-param " +  '"' + sge_extra_param + '"') else ""} \
      ~{if defined(pbs_queue) then ("--pbs-queue " +  '"' + pbs_queue + '"') else ""} \
      ~{if defined(pbs_extra_param) then ("--pbs-extra-param " +  '"' + pbs_extra_param + '"') else ""} \
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
      ~{true="--disable-call-caching" false="" disable_call_caching} \
      ~{if defined(backend_file) then ("--backend-file " +  '"' + backend_file + '"') else ""} \
      ~{true="--soft-glob-output" false="" soft_glob_output} \
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
    inputs: "Workflow inputs JSON file"
    options: "Workflow options JSON file"
    labels: "Workflow labels JSON file"
    imports: "Zip file of imported subworkflows"
    str_label: "Caper's special label for a workflow This label will be added to a workflow labels JSON file as a value for a key \"caper-label\". DO NOT USE IRREGULAR CHARACTERS. USE LETTERS, NUMBERS, DASHES AND UNDERSCORES ONLY (^[A-Za-z0-9\-\_]+$) since this label is used to compose a path for workflow's temporary directory (tmp_dir/label/timestamp/)"
    hold: "Put a hold on a workflow when submitted to a Cromwell server."
    singularity_cache_dir: "Singularity cache directory. Equivalent to exporting an environment variable SINGULARITY_CACHEDIR. Define it to prevent repeatedly building a singularity image for every pipeline task"
    use_gs_util_for_s_three: "Use gsutil CLI for direct trasnfer between S3 and GCS buckets. Otherwise, such file transfer will stream through local machine. Make sure that gsutil is installed on your system and it has access to credentials for AWS (e.g. ~/.boto or ~/.aws/credentials)."
    no_deepcopy: "(IMPORTANT) --deepcopy has been deprecated. Deepcopying is now activated by default. This flag disables deepcopy for JSON (.json), TSV (.tsv) and CSV (.csv) files specified in an input JSON file (--inputs). Find all path/URI string values in an input JSON file and make copies of files on a local/remote storage for a target backend. Make sure that you have installed gsutil for GCS and aws for S3."
    ignore_wom_tool: "Ignore warnings from womtool.jar."
    wom_tool: "Path or URL for Cromwell's womtool JAR file"
    metadata_output: "An optional directory path to output metadata JSON file"
    java_heap_run: "Cromwell Java heap size for \"run\" mode (java -Xmx)"
    backend: "Backend to run a workflow"
    docker: "[DOCKER [DOCKER ...]] URI for Docker image (e.g. ubuntu:latest). This can also be used as a flag to use Docker image address defined in your WDL file as a comment (\"#CAPER docker\")."
    singularity: "[SINGULARITY [SINGULARITY ...]] URI or path for Singularity image (e.g. ~/.singularity/ubuntu-latest.simg, docker://ubuntu:latest, shub://vsoch/hello-world). This can also be used as a flag to use Docker image address defined in your WDL file as a comment (\"#CAPER singularity\")."
    no_build_singularity: "Do not build singularity image before running a workflow."
    slur_m_partition: "SLURM partition"
    slur_m_account: "SLURM account"
    slur_m_extra_param: "SLURM extra parameters. Must be double-quoted"
    sge_pe: "SGE parallel environment. Check with \"qconf -spl\""
    sge_queue: "SGE queue. Check with \"qconf -sql\""
    sge_extra_param: "SGE extra parameters. Must be double-quoted"
    pbs_queue: "PBS queue"
    pbs_extra_param: "PBS extra parameters. Must be double-quoted"
    db: "Cromwell metadata database type"
    db_timeout: "Milliseconds to wait for DB connection."
    file_db: "Default DB file for Cromwell's built-in HyperSQL database."
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
    max_concurrent_tasks: "Number of concurrent tasks. \"config.concurrent-job- limit\" in Cromwell backend configuration for each backend"
    max_concurrent_workflows: "Number of concurrent workflows. \"system.max- concurrent-workflows\" in backend configuration"
    max_retries: "Number of retries for failing tasks. equivalent to \"maxRetries\" in workflow options JSON file."
    disable_call_caching: "Disable Cromwell's call caching, which re-uses outputs from previous workflows"
    backend_file: "Custom Cromwell backend configuration file to override all"
    soft_glob_output: "Use soft-linking when globbing outputs for a filesystem that does not allow hard-linking. e.g. beeGFS. This flag does not work with backends based on a Docker container. i.e. gcp and aws. Also, it does not work with local backends (local/slurm/sge/pbs) with --docker. However, it works fine with --singularity."
    out_dir: "Output directory for local backend"
    tmp_dir: "Temporary directory for local backend"
    gcp_prj: "GC project"
    gcp_zones: "GCP zones (e.g. us-west1-b,us-central1-b)"
    gcp_call_caching_dup_strat: "Duplication strategy for call-cached outputs for GCP backend: copy: make a copy, reference: refer to old output in metadata.json."
    out_gcs_bucket: "Output GCS bucket for GCP backend"
    tmp_gcs_bucket: "Temporary GCS bucket for GCP backend"
    aws_batch_arn: "ARN for AWS Batch"
    aws_region: "AWS region (e.g. us-west-1)"
    out_s_three_bucket: "Output S3 bucket for AWS backend"
    tmp_s_three_bucket: "Temporary S3 bucket for AWS backend"
    wdl: "Path, URL or URI for WDL script Example: /scratch/my.wdl, gs://some/where/our.wdl, http://hello.com/world/your.wdl"
  }
}