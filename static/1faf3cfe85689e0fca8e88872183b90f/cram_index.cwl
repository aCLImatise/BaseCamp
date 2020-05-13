class: CommandLineTool
id: cram_index.cwl
inputs:
- id: filename_cram
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_cram_cra_i
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_index
