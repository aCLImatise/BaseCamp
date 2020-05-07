class: CommandLineTool
id: fasta_utils_uid_OPTIONS_OUTPUT_FILE.cwl
inputs:
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
- OPTIONS
- OUTPUT_FILE
