class: CommandLineTool
id: install_tool_deps.cwl
inputs:
- id: t
  doc: '[TOOL [TOOL ...]], --tool [TOOL [TOOL ...]] Path to a tool file, tool_conf
    file, or yaml file containing a sequence of tool ids'
  type: boolean
  inputBinding:
    prefix: -t
- id: i
  doc: '[ID [ID ...]], --id [ID [ID ...]] Space-separated list of tool ids'
  type: boolean
  inputBinding:
    prefix: -i
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
- install_tool_deps
