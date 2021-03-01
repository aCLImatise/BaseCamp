class: CommandLineTool
id: gdc_client_download.cwl
inputs:
- id: in_debug
  doc: "Enable debug logging. If a failure occurs, the program\nwill stop."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_file
  doc: Save logs to file. Amount logged affected by --debug
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_color_off
  doc: Disable colored output
  type: boolean?
  inputBinding:
    prefix: --color_off
- id: in_token_file
  doc: GDC API auth token file
  type: File?
  inputBinding:
    prefix: --token-file
- id: in_dir
  doc: Directory to download files to. Defaults to current
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_no_segment_md_five_sums
  doc: "Do not calculate inbound segment md5sums and/or do not\nverify md5sums on\
    \ restart"
  type: boolean?
  inputBinding:
    prefix: --no-segment-md5sums
- id: in_no_file_md_five_sum
  doc: Do not verify file md5sum after download
  type: boolean?
  inputBinding:
    prefix: --no-file-md5sum
- id: in_n_processes
  doc: Number of client connections.
  type: long?
  inputBinding:
    prefix: --n-processes
- id: in_http_chunk_size
  doc: Size in bytes of standard HTTP block size.
  type: long?
  inputBinding:
    prefix: --http-chunk-size
- id: in_save_interval
  doc: "The number of chunks after which to flush state file.\nA lower save interval\
    \ will result in more frequent\nprintout but lower performance."
  type: long?
  inputBinding:
    prefix: --save-interval
- id: in_no_verify
  doc: Perform insecure SSL connection and transfer
  type: boolean?
  inputBinding:
    prefix: --no-verify
- id: in_no_related_files
  doc: Do not download related files.
  type: boolean?
  inputBinding:
    prefix: --no-related-files
- id: in_no_annotations
  doc: Do not download annotations.
  type: boolean?
  inputBinding:
    prefix: --no-annotations
- id: in_no_auto_retry
  doc: Ask before retrying to download a file
  type: boolean?
  inputBinding:
    prefix: --no-auto-retry
- id: in_retry_amount
  doc: Number of times to retry a download
  type: long?
  inputBinding:
    prefix: --retry-amount
- id: in_wait_time
  doc: Amount of seconds to wait before retrying
  type: string?
  inputBinding:
    prefix: --wait-time
- id: in_latest
  doc: Download latest version of a file if it exists
  type: boolean?
  inputBinding:
    prefix: --latest
- id: in_config
  doc: Path to INI-type config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_manifest
  doc: "GDC download manifest file\n"
  type: File?
  inputBinding:
    prefix: --manifest
- id: in_file_id
  doc: The GDC UUID of the file(s) to download
  type: string
  inputBinding:
    position: 0
- id: in_directory
  doc: -s server, --server server
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gdc-client:1.6.0--py_0
cwlVersion: v1.1
baseCommand:
- gdc-client
- download
