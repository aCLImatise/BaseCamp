class: CommandLineTool
id: caper_submit.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- caper
- submit
