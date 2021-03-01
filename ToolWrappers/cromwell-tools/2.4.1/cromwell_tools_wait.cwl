class: CommandLineTool
id: cromwell_tools_wait.cwl
inputs:
- id: in_url
  doc: "The URL to the Cromwell server. e.g.\n\"https://cromwell.server.org/\""
  type: string?
  inputBinding:
    prefix: --url
- id: in_username
  doc: Cromwell username for HTTPBasicAuth.
  type: string?
  inputBinding:
    prefix: --username
- id: in_password
  doc: Cromwell password for HTTPBasicAuth.
  type: string?
  inputBinding:
    prefix: --password
- id: in_secrets_file
  doc: "Path to the JSON file containing username, password,\nand url fields."
  type: File?
  inputBinding:
    prefix: --secrets-file
- id: in_service_account_key
  doc: "Path to the JSON key file for authenticating with\nCaaS."
  type: File?
  inputBinding:
    prefix: --service-account-key
- id: in_timeout_minutes
  doc: number of minutes to wait before timeout.
  type: long?
  inputBinding:
    prefix: --timeout-minutes
- id: in_poll_interval_seconds
  doc: seconds between polling cromwell for workflow status.
  type: string?
  inputBinding:
    prefix: --poll-interval-seconds
- id: in_silent
  doc: "whether to silently print verbose workflow information\nwhile polling cromwell.\n"
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_workflow_ids
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- wait
