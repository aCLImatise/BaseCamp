class: CommandLineTool
id: cromwell_tools_abort.cwl
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
- id: uuid
  doc: A Cromwell workflow UUID, which is the workflow identifier.
  type: string
  inputBinding:
    prefix: --uuid
outputs: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- abort
