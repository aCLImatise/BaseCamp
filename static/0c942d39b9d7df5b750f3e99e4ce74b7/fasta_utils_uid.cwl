class: CommandLineTool
id: ../../../fasta_utils_uid.cwl
inputs:
- id: table
  doc: Filename of a table to record the changes (by default discards it)
  type: File
  inputBinding:
    prefix: --table
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-utils
- uid
