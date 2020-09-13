class: CommandLineTool
id: ../../../cromwell_tools_status.cwl
inputs:
- id: in_uuid
  doc: ''
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- status
