class: CommandLineTool
id: cromwell_tools_metadata.cwl
inputs:
- id: in_uuid
  doc: "[--includeKey INCLUDEKEY [INCLUDEKEY ...]]\n[--excludeKey EXCLUDEKEY [EXCLUDEKEY\
    \ ...]]\n[--expandSubWorkflows EXPANDSUBWORKFLOWS]"
  type: string
  inputBinding:
    prefix: --uuid
- id: in_url
  doc: "The URL to the Cromwell server. e.g.\n\"https://cromwell.server.org/\""
  type: string
  inputBinding:
    prefix: --url
- id: in_username
  doc: Cromwell username for HTTPBasicAuth.
  type: string
  inputBinding:
    prefix: --username
- id: in_password
  doc: Cromwell password for HTTPBasicAuth.
  type: string
  inputBinding:
    prefix: --password
- id: in_secrets_file
  doc: "Path to the JSON file containing username, password,\nand url fields."
  type: File
  inputBinding:
    prefix: --secrets-file
- id: in_service_account_key
  doc: "Path to the JSON key file for authenticating with\nCaaS."
  type: File
  inputBinding:
    prefix: --service-account-key
- id: in_exclude_key
  doc: "When specified key(s) to exclude from the metadata.\nMatches any key starting\
    \ with the value. May not be\nused with includeKey."
  type: string[]
  inputBinding:
    prefix: --excludeKey
- id: in_expand_sub_workflows
  doc: "When true, metadata for sub workflows will be fetched\nand inserted automatically\
    \ in the metadata response.\n"
  type: string
  inputBinding:
    prefix: --expandSubWorkflows
- id: in_identifier_dot
  doc: --includeKey INCLUDEKEY [INCLUDEKEY ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- metadata
