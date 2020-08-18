class: CommandLineTool
id: ../../../llr_freq_file.cwl
inputs:
- id: llr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a_length
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: freq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- llr
- freq_file
