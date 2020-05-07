class: CommandLineTool
id: setup_data_libraries.cwl
inputs:
- id: training
  doc: Set defaults that make sense for training data.
  type: boolean
  inputBinding:
    prefix: --training
- id: legacy
  doc: Use legacy APIs even for newer Galaxies that should have a batch upload API
    enabled.
  type: boolean
  inputBinding:
    prefix: --legacy
- id: verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
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
- setup-data-libraries
