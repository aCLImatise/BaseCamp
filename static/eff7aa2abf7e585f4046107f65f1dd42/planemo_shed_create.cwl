class: CommandLineTool
id: planemo_shed_create.cwl
inputs:
- id: in_recursive
  doc: Recursively perform command for nested repository
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_owner
  doc: Tool Shed repository owner (username).
  type: string
  inputBinding:
    prefix: --owner
- id: in_name
  doc: "Tool Shed repository name (defaults to the\ninferred tool directory name)."
  type: Directory
  inputBinding:
    prefix: --name
- id: in_shed_email
  doc: "E-mail for Tool Shed auth (required unless\nshed_key is specified)."
  type: string
  inputBinding:
    prefix: --shed_email
- id: in_shed_key
  doc: "API key for Tool Shed access. An API key is\nrequired unless e-mail and password\
    \ is specified.\nThis key can be specified with either --shed_key\nor --shed_key_from_env."
  type: string
  inputBinding:
    prefix: --shed_key
- id: in_shed_key_from_env
  doc: "Environment variable to read API key for Tool Shed\naccess from."
  type: string
  inputBinding:
    prefix: --shed_key_from_env
- id: in_shed_password
  doc: "Password for Tool Shed auth (required unless\nshed_key is specified)."
  type: string
  inputBinding:
    prefix: --shed_password
- id: in_shed_target
  doc: "Tool Shed to target (this can be 'toolshed',\n'testtoolshed', 'local' (alias\
    \ for\nhttp://localhost:9009/), an arbitrary url or\nmappings defined ~/.planemo.yml."
  type: long
  inputBinding:
    prefix: --shed_target
- id: in_message
  doc: Commit message for tool shed upload.
  type: string
  inputBinding:
    prefix: --message
- id: in_skip_upload
  doc: "Skip upload contents as part of operation, only\nupdate metadata."
  type: boolean
  inputBinding:
    prefix: --skip_upload
- id: in_directories_dot
  doc: --fail_fast               If multiple repositories are specified and an
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- shed_create
