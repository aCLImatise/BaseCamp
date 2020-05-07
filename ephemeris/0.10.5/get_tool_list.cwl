class: CommandLineTool
id: get_tool_list.cwl
inputs:
- id: output_file
  doc: 'tool_list.yml output file (default: None)'
  type: string
  inputBinding:
    prefix: --output-file
- id: include_tool_panel_id
  doc: 'Include tool_panel_id in tool_list.yml ? Use this only if the tool panel id
    already exists. See https://github.com/galaxyproject/ansible-galaxy- tools/blob/master/files/tool_list.yaml.sample
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --include_tool_panel_id
- id: skip_tool_panel_name
  doc: 'Do not include tool_panel_name in tool_list.yml ? (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_tool_panel_name
- id: skip_changeset_revision
  doc: 'Do not include the changeset revision when generating the tool list.Use this
    if you would like to use the list to update all the tools inyour galaxy instance
    using shed-install. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_changeset_revision
- id: get_data_managers
  doc: 'Include the data managers in the tool list. Requires admin login details (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --get_data_managers
- id: get_all_tools
  doc: 'Get all tools and revisions, not just those which are present on the web ui.Requires
    login details. (default: False)'
  type: boolean
  inputBinding:
    prefix: --get_all_tools
- id: verbose
  doc: 'Increase output verbosity. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: galaxy
  doc: 'Target Galaxy instance URL/IP address (default: http://localhost:8080)'
  type: string
  inputBinding:
    prefix: --galaxy
- id: user
  doc: 'Galaxy user email address (default: None)'
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: 'Password for the Galaxy user (default: None)'
  type: string
  inputBinding:
    prefix: --password
- id: api_key
  doc: 'Galaxy admin user API key (required if not defined in the tools list file)
    (default: None)'
  type: string
  inputBinding:
    prefix: --api_key
outputs: []
cwlVersion: v1.1
baseCommand:
- get-tool-list
