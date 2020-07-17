class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdc_client_upload.cwl
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
- id: project_id
  doc: The project ID that owns the file
  type: string
  inputBinding:
    prefix: --project-id
- id: path
  doc: directory path to find file
  type: File
  inputBinding:
    prefix: --path
- id: upload_id
  doc: Multipart upload id
  type: string
  inputBinding:
    prefix: --upload-id
- id: insecure
  doc: Allow connections to server without certs
  type: boolean
  inputBinding:
    prefix: --insecure
- id: server
  doc: GDC API server address
  type: string
  inputBinding:
    prefix: --server
- id: part_size
  doc: DEPRECATED in favor of [--upload-part-size]
  type: string
  inputBinding:
    prefix: --part-size
- id: upload_part_size
  doc: Part size for multipart upload
  type: string
  inputBinding:
    prefix: --upload-part-size
- id: n_processes
  doc: Number of client connections
  type: string
  inputBinding:
    prefix: --n-processes
- id: disable_multipart
  doc: Disable multipart upload
  type: boolean
  inputBinding:
    prefix: --disable-multipart
- id: abort
  doc: Abort previous multipart upload
  type: boolean
  inputBinding:
    prefix: --abort
- id: resume
  doc: Resume previous multipart upload
  type: boolean
  inputBinding:
    prefix: --resume
- id: delete
  doc: Delete an uploaded file
  type: boolean
  inputBinding:
    prefix: --delete
- id: manifest
  doc: Manifest which describes files to be uploaded
  type: string
  inputBinding:
    prefix: --manifest
- id: config
  doc: Path to INI-type config file
  type: File
  inputBinding:
    prefix: --config
- id: file_id
  doc: The GDC UUID of the file(s) to upload
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gdc-client
- upload
