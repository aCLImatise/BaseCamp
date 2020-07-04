class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdc_client_download.cwl
inputs:
- id: debug
  doc: Enable debug logging. If a failure occurs, the program will stop.
  type: boolean
  inputBinding:
    prefix: --debug
- id: log_file
  doc: Save logs to file. Amount logged affected by --debug
  type: string
  inputBinding:
    prefix: --log-file
- id: color_off
  doc: Disable colored output
  type: boolean
  inputBinding:
    prefix: --color_off
- id: token_file
  doc: GDC API auth token file
  type: string
  inputBinding:
    prefix: --token-file
- id: dir
  doc: Directory to download files to. Defaults to current directory
  type: string
  inputBinding:
    prefix: --dir
- id: server
  doc: The TCP server address server[:port]
  type: string
  inputBinding:
    prefix: --server
- id: no_segment_md_five_sums
  doc: Do not calculate inbound segment md5sums and/or do not verify md5sums on restart
  type: boolean
  inputBinding:
    prefix: --no-segment-md5sums
- id: no_file_md_five_sum
  doc: Do not verify file md5sum after download
  type: boolean
  inputBinding:
    prefix: --no-file-md5sum
- id: n_processes
  doc: Number of client connections.
  type: string
  inputBinding:
    prefix: --n-processes
- id: http_chunk_size
  doc: Size in bytes of standard HTTP block size.
  type: string
  inputBinding:
    prefix: --http-chunk-size
- id: save_interval
  doc: The number of chunks after which to flush state file. A lower save interval
    will result in more frequent printout but lower performance.
  type: string
  inputBinding:
    prefix: --save-interval
- id: no_verify
  doc: Perform insecure SSL connection and transfer
  type: boolean
  inputBinding:
    prefix: --no-verify
- id: no_related_files
  doc: Do not download related files.
  type: boolean
  inputBinding:
    prefix: --no-related-files
- id: no_annotations
  doc: Do not download annotations.
  type: boolean
  inputBinding:
    prefix: --no-annotations
- id: no_auto_retry
  doc: Ask before retrying to download a file
  type: boolean
  inputBinding:
    prefix: --no-auto-retry
- id: retry_amount
  doc: Number of times to retry a download
  type: string
  inputBinding:
    prefix: --retry-amount
- id: wait_time
  doc: Amount of seconds to wait before retrying
  type: string
  inputBinding:
    prefix: --wait-time
- id: latest
  doc: Download latest version of a file if it exists
  type: boolean
  inputBinding:
    prefix: --latest
- id: config
  doc: Path to INI-type config file
  type: File
  inputBinding:
    prefix: --config
- id: manifest
  doc: GDC download manifest file
  type: string
  inputBinding:
    prefix: --manifest
- id: file_id
  doc: The GDC UUID of the file(s) to download
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gdc-client
- download
