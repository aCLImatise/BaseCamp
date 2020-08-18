class: CommandLineTool
id: ../../../NanoLyse.cwl
inputs:
- id: reference
  doc: Specify a reference fasta file against which to filter.
  type: string
  inputBinding:
    prefix: --reference
- id: log_file
  doc: Specify the path and filename for the log file.
  type: string
  inputBinding:
    prefix: --logfile
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- NanoLyse
