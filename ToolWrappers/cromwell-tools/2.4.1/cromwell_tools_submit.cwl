class: CommandLineTool
id: cromwell_tools_submit.cwl
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
- id: in_wdl_file
  doc: "Path to the workflow source file to submit for\nexecution."
  type: File?
  inputBinding:
    prefix: --wdl-file
- id: in_inputs_files
  doc: "Path(s) to the input file(s) containing input data in\nJSON format, separated\
    \ by space."
  type: string[]
  inputBinding:
    prefix: --inputs-files
- id: in_deps_file
  doc: "Path to the Zip file containing dependencies, or a\nlist of raw dependency\
    \ files to be zipped together\nseparated by space."
  type: string[]
  inputBinding:
    prefix: --deps-file
- id: in_options_file
  doc: Path to the Cromwell configs JSON file.
  type: File?
  inputBinding:
    prefix: --options-file
- id: in_label_file
  doc: "Path to the JSON file containing a collection of\nkey/value pairs for workflow\
    \ labels."
  type: File?
  inputBinding:
    prefix: --label-file
- id: in_collection_name
  doc: "Collection in SAM that the workflow should belong to,\nif use CaaS."
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_on_hold
  doc: Whether to submit the workflow in "On Hold" status.
  type: string?
  inputBinding:
    prefix: --on-hold
- id: in_validate_labels
  doc: "Whether to validate cromwell labels.\n"
  type: string?
  inputBinding:
    prefix: --validate-labels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cromwell-tools
- submit
