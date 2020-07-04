version 1.0

task CaperSubmit {
  input {
    Boolean? dry_run
    Boolean? debug
    String? port
    String? ip
    Boolean? no_server_heartbeat
    String? server_heartbeat_file
    String? server_heartbeat_timeout
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
    String wdl
  }
  command <<<
    caper submit \
      ~{wdl} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--debug" false="" debug} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" no_server_heartbeat} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
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
      ~{if defined(pbs_extra_param) then ("--pbs-extra-param " +  '"' + pbs_extra_param + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of a server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A heartbeat file older than this interval will be ignored."
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
    wdl: "Path, URL or URI for WDL script Example: /scratch/my.wdl, gs://some/where/our.wdl, http://hello.com/world/your.wdl"
  }
}