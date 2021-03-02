class: CommandLineTool
id: caper_debug.cwl
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
- id: in_show_completed_task
  doc: Show information about completed tasks.
  type: boolean?
  inputBinding:
    prefix: --show-completed-task
- id: in_show_stdout
  doc: Show STDOUT for failed tasks.
  type: boolean?
  inputBinding:
    prefix: --show-stdout
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
  doc: "Temporary directory to store cached files for aws\nbackend. e.g. s3://my-bucket/caper-cache-dir.\n"
  type: long?
  inputBinding:
    prefix: --tmp-s3-bucket
- id: in_wf_id_or_label
  doc: "List of workflow IDs to find matching workflows to\ncommit a specified action\
    \ (list, metadata and abort).\nWildcards (* and ?) are allowed."
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
- debug
