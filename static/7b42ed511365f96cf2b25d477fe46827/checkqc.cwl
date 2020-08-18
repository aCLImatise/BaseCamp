class: CommandLineTool
id: ../../../checkqc.cwl
inputs:
- id: config
  doc: Path to the checkQC configuration file
  type: File
  inputBinding:
    prefix: --config
- id: json
  doc: Print the results of the run as json to stdout
  type: boolean
  inputBinding:
    prefix: --json
- id: downgrade_errors
  doc: Downgrade errors to warnings for a specific handler, can be used multiple times
  type: string
  inputBinding:
    prefix: --downgrade-errors
- id: use_closest_read_length
  doc: Use the closest read length if the read length used isn't specified in the
    config
  type: boolean
  inputBinding:
    prefix: --use-closest-read-length
- id: run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkqc
