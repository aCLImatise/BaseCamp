class: CommandLineTool
id: opentargets_validator.cwl
inputs:
- id: in_schema
  doc: set the schema file to use
  type: File?
  inputBinding:
    prefix: --schema
- id: in_log_level
  doc: 'set the log level def: WARNING'
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_log_lines
  doc: "number of log errors to print out [no longer\nsupported]\n"
  type: long?
  inputBinding:
    prefix: --log-lines
- id: in_data_source_file
  doc: 'The prefix to prepend default: STDIN'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/opentargets-validator:0.7.0--py_0
cwlVersion: v1.1
baseCommand:
- opentargets_validator
