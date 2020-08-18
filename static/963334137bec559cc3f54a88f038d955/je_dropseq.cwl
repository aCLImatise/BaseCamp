class: CommandLineTool
id: ../../../je_dropseq.cwl
inputs:
- id: path_dot
  doc: 'Required. '
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- dropseq
