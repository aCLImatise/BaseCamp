class: CommandLineTool
id: planemo_shed_upload.cwl
inputs:
- id: in_recursive
  doc: "Recursively perform command for nested\nrepository directories."
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_fail_fast
  doc: "If multiple repositories are specified and an\nerror occurs stop immediately\
    \ instead of\nprocessing remaining repositories."
  type: boolean
  inputBinding:
    prefix: --fail_fast
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
    \ is\nspecified. This key can be specified with\neither --shed_key or --shed_key_from_env."
  type: string
  inputBinding:
    prefix: --shed_key
- id: in_shed_key_from_env
  doc: "Environment variable to read API key for Tool\nShed access from."
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
- id: in_force_repository_creation
  doc: "If a repository cannot be found for the\nspecified user/repo name pair, then\n\
    automatically create the repository in the\ntoolshed."
  type: boolean
  inputBinding:
    prefix: --force_repository_creation
- id: in_check_diff
  doc: "Skip uploading if the shed_diff detects there\nwould be no 'difference' (only\
    \ attributes\npopulated by the shed would be updated.)"
  type: boolean
  inputBinding:
    prefix: --check_diff
- id: in_tar_only
  doc: "Produce tar file for upload but do not publish\nto a tool shed."
  type: boolean
  inputBinding:
    prefix: --tar_only
- id: in_tar
  doc: "Specify a pre-existing tar file instead of\nautomatically building one as\
    \ part of this\ncommand."
  type: File
  inputBinding:
    prefix: --tar
- id: in_tools_slash_ncbi_blast_plus_slash_tool_dependencies_dot_xml
  doc: '% tar -tzf shed_upload.tar.gz | wc -l'
  type: string
  inputBinding:
    position: 0
- id: in_one_ones_even
  doc: 'Options:'
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- shed_upload
