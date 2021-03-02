version 1.0

task CaperSubmit {
  input {
    File? conf
    Boolean? debug
    File? gcp_service_account_key_json
    String? port
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
    String? hostname
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
    Boolean? use_google_cloud_life_sciences
    Int? gcp_zones
    String server_dot
  }
  command <<<
    caper submit \
      ~{server_dot} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(gcp_service_account_key_json) then ("--gcp-service-account-key-json " +  '"' + gcp_service_account_key_json + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
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
    hostname: "Hostname (or IP address) of Caper server."
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
    use_google_cloud_life_sciences: "Use Google Cloud Life Sciences API (v2beta) instead of\\ndeprecated Genomics API (v2alpha1).Life Sciences API\\nrequires only one region specified withgcp-region.\\ngcp-zones will be ignored since it is for Genomics\\nAPI.See https://cloud.google.com/life-\\nsciences/docs/concepts/locations for supported\\nregions."
    gcp_zones: "Comma-separated GCP zones used for Genomics API. (e.g.\\nus-west1-b,us-central1-b). If you use --use-google-\\ncloud-life-sciences then define --gcp-region instead.\\n"
    server_dot: "--singularity-cachedir SINGULARITY_CACHEDIR"
  }
  output {
    File out_stdout = stdout()
  }
}