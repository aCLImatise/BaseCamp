class: CommandLineTool
id: caper_submit.cwl
inputs:
- id: in_dry_run
  doc: Caper does not take any action.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_debug
  doc: Prints all logs >= DEBUG level
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_port
  doc: Port for Caper server
  type: string?
  inputBinding:
    prefix: --port
- id: in_ip
  doc: IP address for Caper server
  type: string?
  inputBinding:
    prefix: --ip
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
- id: in_inputs
  doc: Workflow inputs JSON file
  type: File?
  inputBinding:
    prefix: --inputs
- id: in_options
  doc: Workflow options JSON file
  type: File?
  inputBinding:
    prefix: --options
- id: in_labels
  doc: Workflow labels JSON file
  type: File?
  inputBinding:
    prefix: --labels
- id: in_imports
  doc: Zip file of imported subworkflows
  type: File?
  inputBinding:
    prefix: --imports
- id: in_str_label
  doc: "Caper's special label for a workflow This label will\nbe added to a workflow\
    \ labels JSON file as a value for\na key \"caper-label\". DO NOT USE IRREGULAR\
    \ CHARACTERS.\nUSE LETTERS, NUMBERS, DASHES AND UNDERSCORES ONLY\n(^[A-Za-z0-9\\\
    -\\_]+$) since this label is used to\ncompose a path for workflow's temporary\
    \ directory\n(tmp_dir/label/timestamp/)"
  type: File?
  inputBinding:
    prefix: --str-label
- id: in_hold
  doc: Put a hold on a workflow when submitted to a Cromwell
  type: boolean?
  inputBinding:
    prefix: --hold
- id: in_use_gs_util_for_s_three
  doc: "Use gsutil CLI for direct trasnfer between S3 and GCS\nbuckets. Otherwise,\
    \ such file transfer will stream\nthrough local machine. Make sure that gsutil\
    \ is\ninstalled on your system and it has access to\ncredentials for AWS (e.g.\
    \ ~/.boto or\n~/.aws/credentials)."
  type: boolean?
  inputBinding:
    prefix: --use-gsutil-for-s3
- id: in_no_deepcopy
  doc: "(IMPORTANT) --deepcopy has been deprecated.\nDeepcopying is now activated\
    \ by default. This flag\ndisables deepcopy for JSON (.json), TSV (.tsv) and CSV\n\
    (.csv) files specified in an input JSON file\n(--inputs). Find all path/URI string\
    \ values in an\ninput JSON file and make copies of files on a\nlocal/remote storage\
    \ for a target backend. Make sure\nthat you have installed gsutil for GCS and\
    \ aws for S3."
  type: boolean?
  inputBinding:
    prefix: --no-deepcopy
- id: in_ignore_wom_tool
  doc: Ignore warnings from womtool.jar.
  type: boolean?
  inputBinding:
    prefix: --ignore-womtool
- id: in_wom_tool
  doc: Path or URL for Cromwell's womtool JAR file
  type: File?
  inputBinding:
    prefix: --womtool
- id: in_backend
  doc: Backend to run a workflow
  type: string?
  inputBinding:
    prefix: --backend
- id: in_docker
  doc: "[DOCKER [DOCKER ...]]\nURI for Docker image (e.g. ubuntu:latest). This can\n\
    also be used as a flag to use Docker image address\ndefined in your WDL file as\
    \ a comment (\"#CAPER\ndocker\")."
  type: boolean?
  inputBinding:
    prefix: --docker
- id: in_singularity
  doc: "[SINGULARITY [SINGULARITY ...]]\nURI or path for Singularity image (e.g.\n\
    ~/.singularity/ubuntu-latest.simg,\ndocker://ubuntu:latest, shub://vsoch/hello-world).\n\
    This can also be used as a flag to use Docker image\naddress defined in your WDL\
    \ file as a comment (\"#CAPER\nsingularity\")."
  type: boolean?
  inputBinding:
    prefix: --singularity
- id: in_no_build_singularity
  doc: "Do not build singularity image before running a\nworkflow."
  type: boolean?
  inputBinding:
    prefix: --no-build-singularity
- id: in_slur_m_partition
  doc: SLURM partition
  type: string?
  inputBinding:
    prefix: --slurm-partition
- id: in_slur_m_account
  doc: SLURM account
  type: string?
  inputBinding:
    prefix: --slurm-account
- id: in_slur_m_extra_param
  doc: SLURM extra parameters. Must be double-quoted
  type: string?
  inputBinding:
    prefix: --slurm-extra-param
- id: in_sge_pe
  doc: SGE parallel environment. Check with "qconf -spl"
  type: string?
  inputBinding:
    prefix: --sge-pe
- id: in_sge_queue
  doc: SGE queue. Check with "qconf -sql"
  type: string?
  inputBinding:
    prefix: --sge-queue
- id: in_sge_extra_param
  doc: SGE extra parameters. Must be double-quoted
  type: string?
  inputBinding:
    prefix: --sge-extra-param
- id: in_pbs_queue
  doc: PBS queue
  type: string?
  inputBinding:
    prefix: --pbs-queue
- id: in_pbs_extra_param
  doc: "PBS extra parameters. Must be double-quoted\n"
  type: string?
  inputBinding:
    prefix: --pbs-extra-param
- id: in_server_dot
  doc: --singularity-cachedir SINGULARITY_CACHEDIR
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- caper
- submit
