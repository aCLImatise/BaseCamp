class: CommandLineTool
id: run_data_managers.cwl
inputs:
- id: in_config
  doc: "Path to the YAML config file with the list of data\nmanagers and data to install."
  type: File
  inputBinding:
    prefix: --config
- id: in_overwrite
  doc: "Disables checking whether the item already exists in\nthe tool data table."
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_ignore_errors
  doc: Do not stop running when jobs have failed.
  type: boolean
  inputBinding:
    prefix: --ignore_errors
- id: in_verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: "Where the log file should be stored. Default is a file\nin your system's temp\
    \ folder"
  type: File
  inputBinding:
    prefix: --log_file
- id: in_galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
- id: in_user
  doc: Galaxy user email address
  type: string
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password for the Galaxy user
  type: string
  inputBinding:
    prefix: --password
- id: in_api_key
  doc: "Galaxy admin user API key (required if not defined in\nthe tools list file)\n"
  type: File
  inputBinding:
    prefix: --api_key
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-data-managers
