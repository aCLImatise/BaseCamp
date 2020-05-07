class: CommandLineTool
id: fasta_utils_uid_OUTPUT_FILE.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-utils
- uid
- OUTPUT_FILE
