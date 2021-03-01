class: CommandLineTool
id: checkqc.cwl
inputs:
- id: in_config
  doc: Path to the checkQC configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_json
  doc: Print the results of the run as json to stdout
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_downgrade_errors
  doc: "Downgrade errors to warnings for a specific\nhandler, can be used multiple\
    \ times"
  type: string?
  inputBinding:
    prefix: --downgrade-errors
- id: in_use_closest_read_length
  doc: "Use the closest read length if the read length\nused isn't specified in the\
    \ config"
  type: boolean?
  inputBinding:
    prefix: --use-closest-read-length
- id: in_file_dot
  doc: 'Options:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkqc:3.6.3--py_0
cwlVersion: v1.1
baseCommand:
- checkqc
