class: CommandLineTool
id: gdc_client_upload.cwl
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
- id: in_project_id
  doc: The project ID that owns the file
  type: File?
  inputBinding:
    prefix: --project-id
- id: in_path
  doc: directory path to find file
  type: File?
  inputBinding:
    prefix: --path
- id: in_upload_id
  doc: Multipart upload id
  type: string?
  inputBinding:
    prefix: --upload-id
- id: in_insecure
  doc: Allow connections to server without certs
  type: boolean?
  inputBinding:
    prefix: --insecure
- id: in_server
  doc: GDC API server address
  type: string?
  inputBinding:
    prefix: --server
- id: in_part_size
  doc: DEPRECATED in favor of [--upload-part-size]
  type: long?
  inputBinding:
    prefix: --part-size
- id: in_upload_part_size
  doc: Part size for multipart upload
  type: long?
  inputBinding:
    prefix: --upload-part-size
- id: in_n_processes
  doc: Number of client connections
  type: long?
  inputBinding:
    prefix: --n-processes
- id: in_disable_multipart
  doc: Disable multipart upload
  type: boolean?
  inputBinding:
    prefix: --disable-multipart
- id: in_abort
  doc: Abort previous multipart upload
  type: boolean?
  inputBinding:
    prefix: --abort
- id: in_resume
  doc: Resume previous multipart upload
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_delete
  doc: Delete an uploaded file
  type: boolean?
  inputBinding:
    prefix: --delete
- id: in_manifest
  doc: Manifest which describes files to be uploaded
  type: string?
  inputBinding:
    prefix: --manifest
- id: in_config
  doc: Path to INI-type config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_file_id
  doc: The GDC UUID of the file(s) to upload
  type: string
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
- upload
