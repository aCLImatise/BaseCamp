version 1.0

task CaperRun {
  input {
    Boolean? dry_run
    Boolean? debug
    File? inputs
    File? options
    File? labels
    File? imports
    File? str_label
    Boolean? hold
    Boolean? use_gs_util_for_s_three
    Boolean? no_deepcopy
    Boolean? ignore_wom_tool
    File? wom_tool
    File? metadata_output
    Int? java_heap_run
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
    String server_dot
  }
  command <<<
    caper run \
      ~{server_dot} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(options) then ("--options " +  '"' + options + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(imports) then ("--imports " +  '"' + imports + '"') else ""} \
      ~{if defined(str_label) then ("--str-label " +  '"' + str_label + '"') else ""} \
      ~{if (hold) then "--hold" else ""} \
      ~{if (use_gs_util_for_s_three) then "--use-gsutil-for-s3" else ""} \
      ~{if (no_deepcopy) then "--no-deepcopy" else ""} \
      ~{if (ignore_wom_tool) then "--ignore-womtool" else ""} \
      ~{if defined(wom_tool) then ("--womtool " +  '"' + wom_tool + '"') else ""} \
      ~{if defined(metadata_output) then ("--metadata-output " +  '"' + metadata_output + '"') else ""} \
      ~{if defined(java_heap_run) then ("--java-heap-run " +  '"' + java_heap_run + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if (docker) then "--docker" else ""} \
      ~{if (singularity) then "--singularity" else ""} \
      ~{if (no_build_singularity) then "--no-build-singularity" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    inputs: "Workflow inputs JSON file"
    options: "Workflow options JSON file"
    labels: "Workflow labels JSON file"
    imports: "Zip file of imported subworkflows"
    str_label: "Caper's special label for a workflow This label will\\nbe added to a workflow labels JSON file as a value for\\na key \\\"caper-label\\\". DO NOT USE IRREGULAR CHARACTERS.\\nUSE LETTERS, NUMBERS, DASHES AND UNDERSCORES ONLY\\n(^[A-Za-z0-9\\-\\_]+$) since this label is used to\\ncompose a path for workflow's temporary directory\\n(tmp_dir/label/timestamp/)"
    hold: "Put a hold on a workflow when submitted to a Cromwell"
    use_gs_util_for_s_three: "Use gsutil CLI for direct trasnfer between S3 and GCS\\nbuckets. Otherwise, such file transfer will stream\\nthrough local machine. Make sure that gsutil is\\ninstalled on your system and it has access to\\ncredentials for AWS (e.g. ~/.boto or\\n~/.aws/credentials)."
    no_deepcopy: "(IMPORTANT) --deepcopy has been deprecated.\\nDeepcopying is now activated by default. This flag\\ndisables deepcopy for JSON (.json), TSV (.tsv) and CSV\\n(.csv) files specified in an input JSON file\\n(--inputs). Find all path/URI string values in an\\ninput JSON file and make copies of files on a\\nlocal/remote storage for a target backend. Make sure\\nthat you have installed gsutil for GCS and aws for S3."
    ignore_wom_tool: "Ignore warnings from womtool.jar."
    wom_tool: "Path or URL for Cromwell's womtool JAR file"
    metadata_output: "An optional directory path to output metadata JSON\\nfile"
    java_heap_run: "Cromwell Java heap size for \\\"run\\\" mode (java -Xmx)"
    backend: "Backend to run a workflow"
    docker: "[DOCKER [DOCKER ...]]\\nURI for Docker image (e.g. ubuntu:latest). This can\\nalso be used as a flag to use Docker image address\\ndefined in your WDL file as a comment (\\\"#CAPER\\ndocker\\\")."
    singularity: "[SINGULARITY [SINGULARITY ...]]\\nURI or path for Singularity image (e.g.\\n~/.singularity/ubuntu-latest.simg,\\ndocker://ubuntu:latest, shub://vsoch/hello-world).\\nThis can also be used as a flag to use Docker image\\naddress defined in your WDL file as a comment (\\\"#CAPER\\nsingularity\\\")."
    no_build_singularity: "Do not build singularity image before running a\\nworkflow."
    slur_m_partition: "SLURM partition"
    slur_m_account: "SLURM account"
    slur_m_extra_param: "SLURM extra parameters. Must be double-quoted"
    sge_pe: "SGE parallel environment. Check with \\\"qconf -spl\\\""
    sge_queue: "SGE queue. Check with \\\"qconf -sql\\\""
    sge_extra_param: "SGE extra parameters. Must be double-quoted"
    pbs_queue: "PBS queue"
    pbs_extra_param: "PBS extra parameters. Must be double-quoted"
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
    server_dot: "--singularity-cachedir SINGULARITY_CACHEDIR"
  }
  output {
    File out_stdout = stdout()
    File out_metadata_output = "${in_metadata_output}"
    Directory out_out_dir = "${in_out_dir}"
  }
}