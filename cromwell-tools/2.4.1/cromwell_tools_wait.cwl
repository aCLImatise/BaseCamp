class: CommandLineTool
id: cromwell_tools_wait.cwl
inputs:
- id: url
  doc: The URL to the Cromwell server. e.g. "https://cromwell.server.org/"
  type: string
  inputBinding:
    prefix: --url
- id: username
  doc: Cromwell username for HTTPBasicAuth.
  type: string
  inputBinding:
    prefix: --username
- id: password
  doc: Cromwell password for HTTPBasicAuth.
  type: string
  inputBinding:
    prefix: --password
- id: secrets_file
  doc: Path to the JSON file containing username, password, and url fields.
  type: string
  inputBinding:
    prefix: --secrets-file
- id: service_account_key
  doc: Path to the JSON key file for authenticating with CaaS.
  type: string
  inputBinding:
    prefix: --service-account-key
- id: timeout_minutes
  doc: number of minutes to wait before timeout.
  type: string
  inputBinding:
    prefix: --timeout-minutes
- id: poll_interval_seconds
  doc: seconds between polling cromwell for workflow status.
  type: string
  inputBinding:
    prefix: --poll-interval-seconds
- id: silent
  doc: whether to silently print verbose workflow information while polling cromwell.
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- wait
