version 1.0

task CaperRun {
  input {
    File? conf
    Boolean? debug
    File? gcp_service_account_key_json
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
    Int? java_heap_wom_tool
    Int? max_retries
    File? metadata_output
    Int? java_heap_run
    File? cromwell_stdout
    String? backend
    Boolean? dry_run
    Directory? local_loc_dir
    Directory? tmp_gcs_bucket
    Int? tmp_s_three_bucket
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
    String server_dot
  }
  command <<<
    caper run \
      ~{server_dot} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(gcp_service_account_key_json) then ("--gcp-service-account-key-json " +  '"' + gcp_service_account_key_json + '"') else ""} \
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
      ~{if defined(java_heap_wom_tool) then ("--java-heap-womtool " +  '"' + java_heap_wom_tool + '"') else ""} \
      ~{if defined(max_retries) then ("--max-retries " +  '"' + max_retries + '"') else ""} \
      ~{if defined(metadata_output) then ("--metadata-output " +  '"' + metadata_output + '"') else ""} \
      ~{if defined(java_heap_run) then ("--java-heap-run " +  '"' + java_heap_run + '"') else ""} \
      ~{if defined(cromwell_stdout) then ("--cromwell-stdout " +  '"' + cromwell_stdout + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(local_loc_dir) then ("--local-loc-dir " +  '"' + local_loc_dir + '"') else ""} \
      ~{if defined(tmp_gcs_bucket) then ("--tmp-gcs-bucket " +  '"' + tmp_gcs_bucket + '"') else ""} \
      ~{if defined(tmp_s_three_bucket) then ("--tmp-s3-bucket " +  '"' + tmp_s_three_bucket + '"') else ""} \
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
    inputs: "Workflow inputs JSON file"
    options: "Workflow options JSON file"
    labels: "Workflow labels JSON file"
    imports: "Zip file of imported subworkflows"
    str_label: "Caper's special label for a workflow This label will\\nbe added to a workflow labels JSON file as a value for\\na key \\\"caper-label\\\". DO NOT USE IRREGULAR CHARACTERS.\\nUSE LETTERS, NUMBERS, DASHES AND UNDERSCORES ONLY\\n(^[A-Za-z0-9\\-\\_]+$) since this label is used to\\ncompose a path for workflow's temporary/cache\\ndirectory (.caper_tmp/label/timestamp/)"
    hold: "Put a hold on a workflow when submitted to a Cromwell"
    use_gs_util_for_s_three: "Use gsutil CLI for direct trasnfer between S3 and GCS\\nbuckets. Otherwise, such file transfer will stream\\nthrough local machine. Make sure that gsutil is\\ninstalled on your system and it has access to\\ncredentials for AWS (e.g. ~/.boto or\\n~/.aws/credentials)."
    no_deepcopy: "(IMPORTANT) --deepcopy has been deprecated.\\nDeepcopying is now activated by default. This flag\\ndisables deepcopy for JSON (.json), TSV (.tsv) and CSV\\n(.csv) files specified in an input JSON file\\n(--inputs). Find all path/URI string values in an\\ninput JSON file and make copies of files on a\\nlocal/remote storage for a target backend. Make sure\\nthat you have installed gsutil for GCS and aws for S3."
    ignore_wom_tool: "Ignore warnings from womtool.jar."
    wom_tool: "Path or URL for Cromwell's womtool JAR file"
    java_heap_wom_tool: "Java heap size for Womtool (java -Xmx)"
    max_retries: "Number of retries for failing tasks. equivalent to\\n\\\"maxRetries\\\" in workflow options JSON file."
    metadata_output: "An optional directory path to output metadata JSON\\nfile"
    java_heap_run: "Cromwell Java heap size for \\\"run\\\" mode (java -Xmx)"
    cromwell_stdout: "Local file to write STDOUT of Cromwell Java process\\nto. This is for Cromwell (not for Caper's logging\\nsystem). Note that STDERR is redirected to STDOUT."
    backend: "Backend to run a workflow"
    dry_run: "Caper localizes remote files and validates WDL but\\ndoes not run/submit a pipeline."
    local_loc_dir: "Temporary directory to store Cromwell's intermediate\\nbackend files. These files include backend.conf,\\nworkflow_opts.json, imports.zip. and localized input\\nJSON files due to deepcopying (recursive\\nlocalization). Cromwell's MySQL/PostgreSQL DB password\\ncan be exposed on backend.conf on this directory.\\nTherefore, DO NOT USE /tmp HERE. This directory is\\nalso used for storing cached files for\\nlocal/slurm/sge/pbs backends."
    tmp_gcs_bucket: "Temporary directory to store cached files for gcp\\nbackend. e.g. gs://my-bucket/caper-cache-dir."
    tmp_s_three_bucket: "Temporary directory to store cached files for aws\\nbackend. e.g. s3://my-bucket/caper-cache-dir."
    docker: "[DOCKER]     URI for Docker image (e.g. ubuntu:latest). This can\\nalso be used as a flag to use Docker image address\\ndefined in your WDL file as a comment (\\\"#CAPER\\ndocker\\\") or as \\\"workflow.meta.caper_docker\\\" in WDL."
    singularity: "[SINGULARITY]\\nURI or path for Singularity image (e.g.\\n~/.singularity/ubuntu-latest.simg,\\ndocker://ubuntu:latest, shub://vsoch/hello-world).\\nThis can also be used as a flag to use Docker image\\naddress defined in your WDL file as a comment (\\\"#CAPER\\nsingularity\\\") or as \\\"workflow.meta.caper_singularity\\\"\\nin WDL."
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
    server_dot: "--singularity-cachedir SINGULARITY_CACHEDIR"
  }
  output {
    File out_stdout = stdout()
    File out_metadata_output = "${in_metadata_output}"
    File out_local_out_dir = "${in_local_out_dir}"
    File out_out_gcs_bucket = "${in_out_gcs_bucket}"
    File out_out_s_three_bucket = "${in_out_s_three_bucket}"
  }
}