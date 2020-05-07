class: CommandLineTool
id: cromwell_tools_submit.cwl
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
- id: wdl_file
  doc: Path to the workflow source file to submit for execution.
  type: string
  inputBinding:
    prefix: --wdl-file
- id: inputs_files
  doc: Path(s) to the input file(s) containing input data in JSON format, separated
    by space.
  type: string[]
  inputBinding:
    prefix: --inputs-files
- id: deps_file
  doc: Path to the Zip file containing dependencies, or a list of raw dependency files
    to be zipped together separated by space.
  type: string[]
  inputBinding:
    prefix: --deps-file
- id: options_file
  doc: Path to the Cromwell configs JSON file.
  type: string
  inputBinding:
    prefix: --options-file
- id: label_file
  doc: Path to the JSON file containing a collection of key/value pairs for workflow
    labels.
  type: string
  inputBinding:
    prefix: --label-file
- id: collection_name
  doc: Collection in SAM that the workflow should belong to, if use CaaS.
  type: string
  inputBinding:
    prefix: --collection-name
- id: on_hold
  doc: Whether to submit the workflow in "On Hold" status.
  type: string
  inputBinding:
    prefix: --on-hold
- id: validate_labels
  doc: Whether to validate cromwell labels.
  type: string
  inputBinding:
    prefix: --validate-labels
outputs: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- submit
