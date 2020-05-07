class: CommandLineTool
id: run_data_managers.cwl
inputs:
- id: config
  doc: Path to the YAML config file with the list of data managers and data to install.
  type: string
  inputBinding:
    prefix: --config
- id: overwrite
  doc: Disables checking whether the item already exists in the tool data table.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: ignore_errors
  doc: Do not stop running when jobs have failed.
  type: boolean
  inputBinding:
    prefix: --ignore_errors
- id: verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log_file
  doc: Where the log file should be stored. Default is a file in your system's temp
    folder
  type: string
  inputBinding:
    prefix: --log_file
- id: galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
- id: user
  doc: Galaxy user email address
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: Password for the Galaxy user
  type: string
  inputBinding:
    prefix: --password
- id: api_key
  doc: Galaxy admin user API key (required if not defined in the tools list file)
  type: string
  inputBinding:
    prefix: --api_key
outputs: []
cwlVersion: v1.1
baseCommand:
- run-data-managers
