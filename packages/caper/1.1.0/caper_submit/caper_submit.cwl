class: CommandLineTool
id: caper_submit.cwl
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
- id: in_hostname
  doc: Hostname (or IP address) of Caper server.
  type: string?
  inputBinding:
    prefix: --hostname
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
    -\\_]+$) since this label is used to\ncompose a path for workflow's temporary/cache\n\
    directory (.caper_tmp/label/timestamp/)"
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
- id: in_java_heap_wom_tool
  doc: Java heap size for Womtool (java -Xmx)
  type: long?
  inputBinding:
    prefix: --java-heap-womtool
- id: in_max_retries
  doc: "Number of retries for failing tasks. equivalent to\n\"maxRetries\" in workflow\
    \ options JSON file."
  type: long?
  inputBinding:
    prefix: --max-retries
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
- id: in_docker
  doc: "[DOCKER]     URI for Docker image (e.g. ubuntu:latest). This can\nalso be\
    \ used as a flag to use Docker image address\ndefined in your WDL file as a comment\
    \ (\"#CAPER\ndocker\") or as \"workflow.meta.caper_docker\" in WDL."
  type: boolean?
  inputBinding:
    prefix: --docker
- id: in_singularity
  doc: "[SINGULARITY]\nURI or path for Singularity image (e.g.\n~/.singularity/ubuntu-latest.simg,\n\
    docker://ubuntu:latest, shub://vsoch/hello-world).\nThis can also be used as a\
    \ flag to use Docker image\naddress defined in your WDL file as a comment (\"\
    #CAPER\nsingularity\") or as \"workflow.meta.caper_singularity\"\nin WDL."
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
  doc: PBS extra parameters. Must be double-quoted
  type: string?
  inputBinding:
    prefix: --pbs-extra-param
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
- id: in_server_dot
  doc: --singularity-cachedir SINGULARITY_CACHEDIR
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/caper:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- caper
- submit
