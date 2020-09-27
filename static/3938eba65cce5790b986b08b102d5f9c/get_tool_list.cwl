class: CommandLineTool
id: get_tool_list.cwl
inputs:
- id: in_output_file
  doc: 'tool_list.yml output file (default: None)'
  type: File
  inputBinding:
    prefix: --output-file
- id: in_include_tool_panel_id
  doc: "Include tool_panel_id in tool_list.yml ? Use this only\nif the tool panel\
    \ id already exists. See\nhttps://github.com/galaxyproject/ansible-galaxy-\ntools/blob/master/files/tool_list.yaml.sample\n\
    (default: False)"
  type: boolean
  inputBinding:
    prefix: --include_tool_panel_id
- id: in_skip_tool_panel_name
  doc: "Do not include tool_panel_name in tool_list.yml ?\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --skip_tool_panel_name
- id: in_skip_changeset_revision
  doc: "Do not include the changeset revision when generating\nthe tool list.Use this\
    \ if you would like to use the\nlist to update all the tools inyour galaxy instance\n\
    using shed-install. (default: False)"
  type: boolean
  inputBinding:
    prefix: --skip_changeset_revision
- id: in_get_data_managers
  doc: "Include the data managers in the tool list. Requires\nadmin login details\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --get_data_managers
- id: in_get_all_tools
  doc: "Get all tools and revisions, not just those which are\npresent on the web\
    \ ui.Requires login details.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --get_all_tools
- id: in_verbose
  doc: 'Increase output verbosity. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_galaxy
  doc: "Target Galaxy instance URL/IP address (default:\nhttp://localhost:8080)"
  type: long
  inputBinding:
    prefix: --galaxy
- id: in_user
  doc: 'Galaxy user email address (default: None)'
  type: string
  inputBinding:
    prefix: --user
- id: in_password
  doc: 'Password for the Galaxy user (default: None)'
  type: string
  inputBinding:
    prefix: --password
- id: in_api_key
  doc: "Galaxy admin user API key (required if not defined in\nthe tools list file)\
    \ (default: None)\n"
  type: File
  inputBinding:
    prefix: --api_key
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'tool_list.yml output file (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- get-tool-list
