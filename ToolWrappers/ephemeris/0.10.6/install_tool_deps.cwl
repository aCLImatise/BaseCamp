class: CommandLineTool
id: install_tool_deps.cwl
inputs:
- id: in_path_tool_file
  doc: "[TOOL [TOOL ...]], --tool [TOOL [TOOL ...]]\nPath to a tool file, tool_conf\
    \ file, or yaml file\ncontaining a sequence of tool ids"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_spaceseparated_list_tool
  doc: "[ID [ID ...]], --id [ID [ID ...]]\nSpace-separated list of tool ids"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_verbose
  doc: Increase output verbosity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_galaxy
  doc: Target Galaxy instance URL/IP address
  type: string?
  inputBinding:
    prefix: --galaxy
- id: in_user
  doc: Galaxy user email address
  type: string?
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password for the Galaxy user
  type: string?
  inputBinding:
    prefix: --password
- id: in_api_key
  doc: "Galaxy admin user API key (required if not defined in\nthe tools list file)\n"
  type: File?
  inputBinding:
    prefix: --api_key
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- install_tool_deps
