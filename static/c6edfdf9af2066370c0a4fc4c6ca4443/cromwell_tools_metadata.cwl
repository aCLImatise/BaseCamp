class: CommandLineTool
id: cromwell_tools_metadata.cwl
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
- id: include_key
  doc: When specified key(s) to include from the metadata. Matches any key starting
    with the value. May not be used with excludeKey.
  type: string[]
  inputBinding:
    prefix: --includeKey
- id: exclude_key
  doc: When specified key(s) to exclude from the metadata. Matches any key starting
    with the value. May not be used with includeKey.
  type: string[]
  inputBinding:
    prefix: --excludeKey
- id: expand_sub_workflows
  doc: When true, metadata for sub workflows will be fetched and inserted automatically
    in the metadata response.
  type: string
  inputBinding:
    prefix: --expandSubWorkflows
outputs: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- metadata
