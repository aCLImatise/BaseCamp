class: CommandLineTool
id: ../../../je_demultiplex.cwl
inputs:
- id: data_dot
  doc: 'Required. '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- demultiplex
