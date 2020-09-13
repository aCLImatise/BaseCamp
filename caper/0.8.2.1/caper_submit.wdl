version 1.0

task CaperSubmit {
  input {
    Boolean? dry_run
    Boolean? debug
    String? port
    String? ip
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
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
    String server_dot
  }
  command <<<
    caper submit \
      ~{server_dot} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
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
      ~{if defined(pbs_extra_param) then ("--pbs-extra-param " +  '"' + pbs_extra_param + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of\\na server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A\\nheartbeat file older than this interval will be\\nignored."
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
    pbs_extra_param: "PBS extra parameters. Must be double-quoted\\n"
    server_dot: "--singularity-cachedir SINGULARITY_CACHEDIR"
  }
  output {
    File out_stdout = stdout()
  }
}