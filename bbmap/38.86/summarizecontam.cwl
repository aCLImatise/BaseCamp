class: CommandLineTool
id: ../../../summarizecontam.sh.cwl
inputs:
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- summarizecontam.sh
